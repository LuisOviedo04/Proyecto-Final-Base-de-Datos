import mysql.connector
from decouple import config
import smtplib
import Crypto
from Crypto.PublicKey import RSA
import binascii
from Crypto.Cipher import PKCS1_OAEP


rappi_database_connect = {
    'host':'localhost',
    'user':'root',
    'password':'',
    'database':'rappi_database'
}

conexion = mysql.connector.connect(**rappi_database_connect)

cursor = conexion.cursor()

consulta_sql = input("Ingrese su consulta: ")

cursor.execute(consulta_sql)

respuesta = cursor.fetchall()

server = smtplib.SMTP('smtp.gmail.com', 587)
server.starttls()
server.login('2018.metodosnumericos@gmail.com', config('PASSWORD_CORREO'))


for registro in respuesta:
    
    
    num_random = Crypto.Random.new().read

    llave_privada = RSA.generate(1024, num_random)
    llave_publica = llave_privada.publickey()

    llave_privada = llave_privada.exportKey(format = 'DER')
    llave_publica = llave_publica.exportKey(format = 'DER')

    llave_privada = binascii.hexlify(llave_privada).decode('utf8')
    llave_publica = binascii.hexlify(llave_publica).decode('utf8')
    
    #Aqui se envia en mensaje
    mensaje = llave_privada
    subject = 'Llave privada'

    mensaje = 'Subject:  {}\n\n{}'.format(subject, mensaje)

    server.sendmail('2018.metodosnumericos@gmail.com', 'dbase8600@gmail.com', mensaje)

    print("Clave privada enviada de forma exitosa.")
    ###############################


    llave_privada = RSA.importKey(binascii.unhexlify(llave_privada))
    llave_publica = RSA.importKey(binascii.unhexlify(llave_publica)) 

    input("Presione para seguir")

    registro_str = str(registro)
    registro_str = registro_str.encode()
    cipher = PKCS1_OAEP.new(llave_publica)
    mensaje_cifrado = cipher.encrypt(registro_str)
    
    #print("Mensaje encriptado: ", mensaje_cifrado)
    
    
    mensaje = str(mensaje_cifrado)
    subject = 'Mensaje Cifrado'

    mensaje = 'Subject:  {}\n\n{}'.format(subject, mensaje)

    server.sendmail('2018.metodosnumericos@gmail.com', 'dbase8600@gmail.com', mensaje)

    print("Informacion enviada de forma exitosa.")
    
        
    
    '''    
    #Este código es el que debe usar el agente que solicite la información
    input("Presione para desencriptar la informacion")
    
    cipher = PKCS1_OAEP.new(llave_privada)
    mensaje_descifrado = cipher.decrypt(mensaje_cifrado)
    
    print("Mensaje desencriptado: ", mensaje_descifrado)
    '''
    
server.quit()
cursor.close()
conexion.close()