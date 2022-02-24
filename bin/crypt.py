from cryptography.fernet import Fernet
import os

file = open('key.key','rb')
key = file.read()
file.close	

with open('/home/client/src/cryptography/toCrypt/tocrypt.txt','rb') as f:
	data = f.read()

fernet = Fernet(key)
encrypted = fernet.encrypt(data)
f.close()

with open('/home/client/src/cryptography/crypted/crypted_msg.txt','wb') as f:
	f.write(encrypted)
f.close()

with open('/home/client/src/cryptography/toDecrypt/todecrypt.txt','wb') as f:
	f.write(encrypted)
f.close()
