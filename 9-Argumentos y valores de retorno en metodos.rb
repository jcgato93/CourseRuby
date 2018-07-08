# =========================
# formas de declarar metodos
# =========================


# Metodo con parametros
def testMethod nombre,apellido
    
end


# Con un array de argumentos
def saludar (*args)
    puts "Hola #{args[0]}"
    puts "Como estas #{args[1]}"
    puts "Adios #{args[2]}"
end

saludar 'juan','camilo','castillo'


# Parametros con valores por defecto en caso que no se pase el parametro
def saludar (nombre='juan',apellido='castillo')
    puts "Hola #{nombre} #{apellido}"
end


# has como parametro
h = {'nombre':'juan','edad':24}
h[:nombre] # optener el valor del key

def saludar (has)
    puts "Tu nombre es #{has[:nombre]}"
    puts "Tu edad es #{hash[:edad]}"
end

saludar (h)



=begin
 todos los metodos retornan un valor 
 incluso sin usar la palabra reservada  return
 es decir que retorna la ultima linea que se lee 
 del metodo
=end