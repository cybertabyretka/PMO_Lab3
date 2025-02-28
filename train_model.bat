echo Start train model
cd C:/ProgramData/Jenkins/.jenkins/workspace/Download
set PYTHON_PATH=C:\Users\333\AppData\Local\Programs\Python\Python310\python.exe
venv/scripts/activate
cd C:/
%PYTHON_PATH% train_model.py > best_model.txt