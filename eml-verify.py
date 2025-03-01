import dkim
import sys

def verify_dkim(eml_path):
    with open(eml_path, 'rb') as eml_file:
        email_data = eml_file.read()

    print (eml_path,end=': ')
    try:
        if dkim.verify(email_data):
            print("DKIM подпись верифицирована.")
        else:
            print("верификация DKIM подписи не удалась.")
    except Exception as e:
        print(f"Ошибка верификации DKIM: {e}")

def main():
    for f in sys.argv[1:]:
    	verify_dkim(f)

if __name__ == "__main__":
    main()

