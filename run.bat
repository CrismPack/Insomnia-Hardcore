@echo off
pip install gitpython --quiet
python ./run.py

cd ./Modpack-CLI-Tool
python -m venv env
source ./env/bin/activate
pip install -r ./requirements.txt --quiet
python ./Modpack-Export.py
pause