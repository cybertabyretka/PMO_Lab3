cd C:\ProgramData\Jenkins\.jenkins\workspace\Download
call venv\Scripts\activate
cd C:\Users\333\PycharmProjects\PMO_Lab3
set BUILD_ID=dontKillMe
set JENKINS_NODE_COOKIE=dontKillMe
for /F %%i in (best_model.txt) do set path_model=%%i
start /B mlflow models serve -m %path_model% -p 5003 --no-conda
