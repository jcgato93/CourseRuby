#====================================
#operadores matematicos
#====================================
#Suma  
2+3

#Resta 
18-5

#Multiplicacion
 5*5

# Division Simple es decir que retornara un numero entero
# si queremos que retorne un numero decimal ,uno de los numeros debe ser
# decimal 
100/2    
100/6.0

#Reciduo de una Division
25%9

#Exponencial 
5**2

# Uso de modulo de Math para utilizar metodos matematicos
# ejemplo 
# Raiz Cuadrada
Math.sqrt(9)



#====================================
#operadores Booleanos
#====================================
10==8   #igual a
10 !=8  #Diferente de 
10 > 8  #Mayor que
10 < 8  #Menor que 
10 >= 8   #Mayor o igual que
10 <= 8   #Menor o igual que


true && false  #si ambas se cumplen es true
true and false #si ambas se cumplen es true
true || false  #si almenos una se cumple es true
true or false #si almenos una se cumple es true
not true       #negacion
!true          #negacion


#====================================
#   Variables
#====================================

#puts muestra por consola
puts "texto de prueba"

#frase seria la variable
frase  = "texto de prueba"
puts frase


#====================================
#   Conversiones (parser)
#====================================

#parseo a string
# variable.to_s  

#parseo a entero
# variable.to_i

#parseo a float
# variable.to_f



#====================================
#   Metodo puts
#====================================

puts 'linea normal'

puts "primera linea \n segunda linea"

puts  "\t linea con tab"

puts """
Este texto se mostrara 
en multiples lineas
"""

#concatenacion con variables
puts "Mostrar codigo ruby aqui #{2+3}"

nombre ="Juan"

puts "Mi nombre es #{nombre}"