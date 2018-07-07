#===========================
#         Metodos
#===========================

# coleccion de sentencias y expresiones de programacion
# Evita la repeticion de codigo
# Se pueden reutilizar

def  nombre_metodo argumentos,variables
    #Sentencias a ejecutar
end

def saludo
    puts 'Hola!'
end

#=========================
#ejecutar metodo
#=========================
saludo



#=========================
# pasar parametros
#=========================
def methodWithParams nombre,apellido
    puts "Mi nombre es #{nombre}  #{apellido}"    
end

methodWithParams 'juan','castillo'




#=========================
#   Ejemplo  numero es par?
#=========================
def es_par? (numero)
    numero % 2 == 0
end

puts 'Ingrese numero:'
numero = gets.chomp.to_i
if es_par?(numero)
    puts "es par"
else
    puts "es impar" 
end

#=========================
#   Ejemplo  año bisiesto
#=========================
defes_bisiesto?(anio)
	if (anio % 4 == 0 && (anio % 100 != 0 || anio % 400 == 0))
		puts "El año #{anio} es bisiesto."
	else
		puts "El año #{anio} no es bisiesto."
    end
end

puts 'Ingrese un año'
anio = gets.chomp.to_i

es_bisiesto?(anio)