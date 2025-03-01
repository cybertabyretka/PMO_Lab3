cd C:/ProgramData/Jenkins/.jenkins/workspace/Download
set VENV_PYTHON_PATH=C:\ProgramData\Jenkins\.jenkins\workspace\Download\venv\Scripts\python.exe
call venv/scripts/activate
cd C:\Users\333\PycharmProjects\PMO_Lab3
%VENV_PYTHON_PATH% train_model.py > best_model.txt