cd C:/ProgramData/Jenkins/.jenkins/workspace/Download
python -m venv venv
venv/scripts/activate
python -m pip install --upgrade pip
pip install setuptools
pip install -r requirements.txt
python download.py