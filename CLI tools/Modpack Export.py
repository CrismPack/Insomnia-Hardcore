import os
import os.path
import json
import subprocess
from shutil import rmtree, make_archive, move, copytree
from pathlib import Path

import toml  # pip install toml
import yaml
from mdutils.mdutils import MdUtils
from mdutils import Html


##########################################################
# Configuration

export_client = True
export_server = True

refresh_only = False
update_bcc_version = True
cleanup_temp = True
create_release_notes = True
server_mods_remove_list = ["From-The-Fog-1.20-v1.9.2-Forge-Fabric.jar"]
print_path_debug = True

##########################################################
# Variables
user_path = os.path.expanduser("~")

modpack_name = "InsomniaHardcore"
minecraft_version = "1.20.1"

# Get path of project dynamically.
script_path = __file__
git_path = str(os.path.dirname(os.path.dirname(script_path))).replace("/","\\") # .replace("/","\\") is to ensure that the path will be in the Windows format.

packwiz_path = git_path + "\\Packwiz\\"
serverpack_path = git_path + "\\Server Pack\\"
packwiz_exe_path = os.path.expanduser("~") + "\\go\\bin\\packwiz.exe"
packwiz_manifest = "pack.toml"
bcc_client_config_path = packwiz_path + "config\\bcc.json"
bcc_server_config_path = serverpack_path + "config\\bcc.json"
export_path = git_path + "\\Export\\"
tempfolder_path = export_path + "temp\\"
temp_mods_path = tempfolder_path + "mods\\"

if print_path_debug:
    print("[DEBUG] " + git_path)
    print("[DEBUG] " + packwiz_path)
    print("[DEBUG] " + packwiz_exe_path)
    print("[DEBUG] " + bcc_client_config_path)
    print("[DEBUG] " + bcc_server_config_path)


def main():
    os.chdir(packwiz_path)
    
    # Parse pack.toml for modpack version.
    with open(packwiz_manifest, "r") as f:
        pack_toml = toml.load(f)
    pack_version = pack_toml["version"]
    
    
    # Parse the related changelog file for overview details and create release markdown files for CF and MR.
    if create_release_notes:
        os.chdir(git_path)
        changelog_path = git_path + f"\\Changelogs\\{minecraft_version}+{pack_version}.yml"
        
        md_element_full_changelog = f"#### **[[Full Changelog]](https://wiki.crismpack.net/modpacks/insomnia-hardcore/changelog/1.20#v{pack_version})**"
        md_element_pre_release = '**This is a pre-release. Here be dragons!**'
        md_element_bh_banner = "[![BisectHosting Banner](https://github.com/CrismPack/CDN/blob/main/desc/insomnia/bhbanner.png?raw=true)](https://bisecthosting.com/CRISM)"
        md_element_crism_spacer = "![CrismPack Spacer](https://github.com/CrismPack/CDN/blob/main/desc/breakneck/79ESzz1-tiny.png?raw=true)"
        # html_element_bh_banner = "<p><a href='https://bisecthosting.com/CRISM'><img src='https://github.com/CrismPack/CDN/blob/main/desc/insomnia/bhbanner.png?raw=true' width='800' /></a></p>"

        with open(changelog_path, "r") as f:
            changelog_yml = yaml.safe_load(f)
        update_overview = changelog_yml['Update overview']
        #update_overview = update_overview.replace("-","### -")

        mdFile_CF = MdUtils(file_name='CurseForge-Release')
        mdFile_MR = MdUtils(file_name='Modrinth-Release')
        
        print(update_overview)
        
        if "beta" in pack_version or "alpha" in pack_version:
            print("pack_version = " + pack_version)
            mdFile_CF.new_paragraph(md_element_pre_release)
            mdFile_MR.new_paragraph(md_element_pre_release)

        mdFile_CF.new_paragraph(update_overview)
        mdFile_CF.new_paragraph(md_element_full_changelog)
        mdFile_CF.new_paragraph("<br>")
        # mdFile_CF.new_paragraph(md_element_crism_spacer)
        mdFile_CF.new_paragraph(md_element_bh_banner)
        mdFile_CF.create_md_file()
        
        mdFile_MR.new_paragraph(update_overview)
        mdFile_MR.new_paragraph(md_element_full_changelog)
        mdFile_MR.new_paragraph(md_element_crism_spacer)
        mdFile_MR.create_md_file()


    if not refresh_only:
        
        os.chdir(packwiz_path)

        # Update version number in BCC
        if update_bcc_version:
            # Client
            with open(bcc_client_config_path, "r") as f:
                bcc_json = json.load(f)
            bcc_json["modpackVersion"] = pack_version
            with open(bcc_client_config_path, "w") as f:
                json.dump(bcc_json, f)
            # Server
            with open(bcc_server_config_path, "r") as f:
                bcc_json = json.load(f)
            bcc_json["modpackVersion"] = pack_version
            with open(bcc_server_config_path, "w") as f:
                json.dump(bcc_json, f)


        ##########################################################
        # Export client pack
        os.chdir(packwiz_path)

        # Refresh the packwiz index
        subprocess.call(f"{packwiz_exe_path} refresh", shell=True)

        # Packwiz exporting
        file = f'InsomniaHardcore-{minecraft_version}-{pack_version}.zip'
        if export_client:
            # Export CF modpack using Packwiz.
            subprocess.call(f"{packwiz_exe_path} cf export", shell=True)
            move(file, f"{export_path}{file}")
            print("[PackWiz] Client exported.")


        ##########################################################
        # Export server pack

        if export_server:
            # Export CF modpack using Packwiz.
            subprocess.call(f"{packwiz_exe_path} cf export -s server", shell=True)
            file_server_name = f'InsomniaHardcore-ServerPack-{minecraft_version}-{pack_version}.zip'
            move(file, f"{export_path}{file_server_name}")
            print("[PackWiz] Server exported.")

            os.chdir(git_path)
            # Deletes the temp folder if it already exists.
            if os.path.isdir(tempfolder_path):
                rmtree(tempfolder_path)

            copytree("Server Pack", tempfolder_path) # Copies contents of "Server Pack" folder into the temp folder.

            # Console input.
            server_mods_path = input(f'Create a new modpack instance in the CurseForge launcher using the {modpack_name}-ServerPack-{minecraft_version}-{pack_version}.zip file. Then drag the mods folder from that instance into the terminal (No spaces allowed for the source directory): ')
            
            copytree(server_mods_path, temp_mods_path, dirs_exist_ok=True)
            
            # Removes specified files from mods folder
            os.chdir(temp_mods_path)
            for file in os.listdir():
                if file in server_mods_remove_list:
                    os.remove(file)

            os.chdir(export_path)
            make_archive(f"{modpack_name}-ServerPack-{minecraft_version}-{pack_version}", 'zip', tempfolder_path)

        if cleanup_temp and os.path.isdir(tempfolder_path):
            rmtree(tempfolder_path)
            print("Temp folder cleanup finished.")
        
        os.chdir(packwiz_path)
        subprocess.call(f"{packwiz_exe_path} refresh", shell=True)
        
    elif refresh_only:
        subprocess.call(f"{packwiz_exe_path} refresh", shell=True)


if __name__ == "__main__":
    try:
        print("")
        main()
    except KeyboardInterrupt:
        print("Operation aborted by user.")
        exit(-1)
