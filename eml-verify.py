import dkim
import getopt,sys

try:
    opts, args = getopt.gnu_getopt(sys.argv[1:], "i:o:", ['key-txt=','help'])
except:
    opts=[('--help','')]
if ('--help','') in opts:
    print (sys.argv[0],"[--key-txt=<file>] [--help] file1.eml file2.eml ...")
    print ('  --key-txt = <file> - Использовать указанный ключ, в формате TXT записи DNS')
    exit()

key_txt_file=([o[1] for o in opts if o[0]=='--key-txt']+[None])[0]
key_txt=None
if key_txt_file:
    with open(key_txt_file, "r") as f:
        key_txt = f.read().encode()

def key_override(name,timeout=0):
    global key_txt
    return key_txt

def verify_dkim(eml_path):
    global key_txt
    with open(eml_path, 'rb') as eml_file:
        email_data = eml_file.read()

    try:
        kwargs={}
        if key_txt:
            kwargs={'dnsfunc':key_override}
        print (eml_path,end=': ')
        if dkim.verify(email_data,**kwargs):
            print("DKIM подпись верифицирована.")
        else:
            print("верификация DKIM подписи не удалась.")
    except Exception as e:
        print(f"Ошибка верификации DKIM: {e}")

print (args)
for f in args:
    verify_dkim(f)

