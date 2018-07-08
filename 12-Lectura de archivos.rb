# abrir archivo con opcion de escritura
file = File.open('nombre archivo', 'w') # asignar a una variable para que se puede escribir en este 

# escribir en el archivo
file.puts 'hola!'

#guardar 
file.close



# abrir archivo con opcion de lectura
file = File.open('nombre archivo', 'r') # asignar a una variable para que se pueda leer

# leer archivo
file.read


# otra forma de abrir y leer el archivo
File.open('nombre archivo').readlines.each do |linea|
    puts linea
end
