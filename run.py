# This script automatically grabs the latest version of HaXrDEV's Modpack-CLI-Tool and runs it
# v1

import os
import os.path
import git
import shutil
import stat
import subprocess

script_path = __file__
root_path = str(os.path.dirname(script_path)).replace("/","\\") # .replace("/","\\") is to ensure that the path will be in the Windows format.

CLI_TOOL_PATH = root_path + "\\Modpack-CLI-Tool"

def on_rm_error(func, path, exc_info):
    """This method marks read only files as writable while you are deleting your tree with shutil.rmtree."""
    #from: https://stackoverflow.com/questions/4829043/how-to-remove-read-only-attrib-directory-with-python-in-windows
    os.chmod(path, stat.S_IWRITE)
    os.unlink(path)

if not os.path.exists(CLI_TOOL_PATH):
    git.Repo.clone_from("https://github.com/HaXrDEV/Modpack-CLI-Tool", CLI_TOOL_PATH)
else:
    shutil.rmtree(CLI_TOOL_PATH, onerror=on_rm_error)
    git.Repo.clone_from("https://github.com/HaXrDEV/Modpack-CLI-Tool", CLI_TOOL_PATH)

subprocess.run(["python", f"{CLI_TOOL_PATH}\\Modpack Export.py"])