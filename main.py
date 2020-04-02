import requests 
import pymysql
import sys

#TP2 Laboratorio IV en Python por Walter Julian Gutierrez Caligaris

#1.Creando nuestra base de datos
def crearBaseDatos():
    try:
        connection = pymysql.connect(host='localhost', user='root', password="", db="mysql")
        cursor = connection.cursor()
        cursor.execute("CREATE DATABASE IF NOT EXISTS tp2python")
        connection.close()
        cursor.close()
        print("Database created succesfully!")
    except:
        print("An error has ocurred while we was trying to create the database. We're sorry!")

#2.CREANDO LA TABLA
def crearTabla():
    try:
        connection = pymysql.connect(host='localhost', user='root', password="", db="tp2python")
        cursor = connection.cursor()
        cursor.execute("CREATE TABLE IF NOT EXISTS pais(codigo INT(11) NOT NULL, nombrePais VARCHAR(50) NOT NULL,capitalPais VARCHAR(50) NOT NULL,region VARCHAR(50) NOT NULL, latitud FLOAT NOT NULL,longitud FLOAT NOT NULL,poblacion BIGINT,PRIMARY KEY(codigo,nombrePais))")
        connection.close()
        cursor.close()
        print("Table created succesfully!")
    except:
        print("An error has ocurred while we was trying to create the table. We're sorry!")

#3. INSERTANDO DATOS        
def insertandoDatos(nombrePais, capitalPais, region, latitud, longitud, codigoPais, poblacion):
    try:
            conexion= pymysql.connect(host="localhost", user="root", password="", db="tp2python")
            cursor=conexion.cursor()
            cursor.execute("INSERT INTO pais(codigo,nombrePais,capitalPais,region,latitud,longitud,poblacion) VALUES (%s,%s,%s,%s,%s,%s,%s)", (int(codigoPais),nombrePais,capitalPais,region,float(latitud),float(longitud),float((poblacion))))
            conexion.commit()
            conexion.close()
            cursor.close()
    except:
            e = sys.exc_info()
            print( e )
        

            
#Main y leyendo JSON
if  __name__ == '__main__':
    crearBaseDatos()
    crearTabla()
    for i in range(300):
        url = 'https://restcountries.eu/rest/v2/callingcode/'+str(i)
        response = requests.get(url)
        if response.status_code == 200:
            response_jsons=dict()
            response_jsons=response.json()
            for response_json in response_jsons:
                nombrePais=response_json['name']
                capitalPais=response_json['capital']
                region=response_json['region']
                latitud=response_json['latlng'][0]
                longitud=response_json['latlng'][1]
                codigoPais=i
                poblacion=response_json['population']
                print(str(codigoPais))
                insertandoDatos(nombrePais, capitalPais, region, latitud, longitud, codigoPais, poblacion)
    print()