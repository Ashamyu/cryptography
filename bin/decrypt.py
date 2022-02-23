from cryptography.fernet import Fernet


file = open('key.key','rb')
key = file.read()
file.close	

with open('/home/client/sham/master/toDecrypt/todecrypt.txt','rb') as f:
	data = f.read()
f.close()

fernet = Fernet(key)
decrypted = fernet.decrypt(data)

#write encypted file

with open('/home/client/sham/master/decrypted/decrypted_msg.txt','wb') as f:
	f.write(decrypted)

f.close()
