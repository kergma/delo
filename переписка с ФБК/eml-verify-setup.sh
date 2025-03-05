sudo apt install python3-dkim
python3 eml-verify.py *.eml

exit

python3 -m venv venv
source ./venv/bin/activate
./venv/bin/pip3 install dkimpy
./venv/bin/python3 eml-verify.py *.eml


