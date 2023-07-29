import mysql.connector

conexion = mysql.connector.connect(host='localhost',
                             user='root',
                             password='',
                             db='sigomatchbattle',
			                port='3306')
print("Conexión correcta")