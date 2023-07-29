import mysql.connector

class cartas:
    def __init___(self, nombre, poder, experiencia, defensa):
        self.__nombre=nombre
        self.__poder=poder 
        self.__experiencia=experiencia
        self.__defensa=defensa
        listajugador=["poder","experiencia","defensa"]

    def cartas_enemigo(self, nombre, poder, experiencia, defensa):
        self.__nombre=nombre
        self.__poder=poder 
        self.__experiencia=experiencia
        self.__defensa=defensa
        lista=["poder","experiencia","defensa"]


class jugador(cartas):
    def __init__(self, usuario,nombre,poder,experiencia,defensa):
        self.__usuario = usuario
        self.__nombre = nombre
        cartas().__init__(nombre,poder,experiencia,defensa)
    while True:
        carta=mysql.connector.connect(SELECT * from cartas where nombre)
        carta=('SELECT * FROM cartas')
        match carta:
            case 1:
                ('Ha seleccionado la primera carta')
            case 2:
                ('Ha seleccionado la segunda carta')
            case 3:
                ('Ha seleccionado la tercera carta')
            case 4:
                ('Ha seleccionado la cuarta carta')
                break
            case _:
                print('Invalido')

    while True:
        habilidad=int(input(' '))
        match habilidad:
            case 1:
                ('Ha seleccionado PODER de la carta')
            case 2:
                ('Ha seleccionado EXPERIENCIA de la carta')
            case 3:
                ('Ha seleccionado DEFENSA')
                break
            case _:
                print('Seleccione nuevamente')

class Batalla (jugador,cartas):
    def __init__(self, numcartas,habilidad,cartas_enemigo,usuario, nombre, poder, experiencia, defensa):
        self.__numcartas = numcartas
        self.__habilidad = habilidad
        self.__cartas_enemigo = cartas_enemigo
        super().__init__(usuario, nombre, poder, experiencia, defensa)
        if habilidad > cartas_enemigo:
            numcartas+=numcartas
            print('Has ganado una carta enemiga')
        elif habilidad < cartas_enemigo:
            numcartas-=numcartas
            print('Has perdido una carta')