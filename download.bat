cd C:/ProgramData/Jenkins/.jenkins/workspace/Download
set PYTHON_PATH=C:\Users\333\AppData\Local\Programs\Python\Python310\python.exe
%PYTHON_PATH% -m venv venv
venv/scripts/activate
%PYTHON_PATH% -m pip install --upgrade pip
%PYTHON_PATH% -m pip install setuptools
%PYTHON_PATH% -m pip install -r requirements.txt
%PYTHON_PATH% download.py