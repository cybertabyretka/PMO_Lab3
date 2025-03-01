cd C:/ProgramData/Jenkins/.jenkins/workspace/Download
set PYTHON_PATH=C:\Users\333\AppData\Local\Programs\Python\Python310\python.exe
%PYTHON_PATH% -m venv venv
call venv\scripts\activate
cd C:\Users\333\PycharmProjects\PMO_Lab3
set VENV_PYTHON_PATH=C:\ProgramData\Jenkins\.jenkins\workspace\Download\venv\Scripts\python.exe
%VENV_PYTHON_PATH% -m pip install --upgrade pip
%VENV_PYTHON_PATH% -m pip install setuptools
%VENV_PYTHON_PATH% -m pip install -r requirements.txt
%VENV_PYTHON_PATH% download.py