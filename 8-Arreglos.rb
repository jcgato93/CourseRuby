# ====================
#   Arreglos  Arrays
# ====================

# para definir un objeto como arreglo
a = Array.new

# definir arreglo con la cantidad de espacios especificados
a = Array.new(10)


# definir arreglo con la cantidad de espacios especificados con valores especificos
a = Array.new(10, 1)

# definir arreglo especificando un rango o sucecion
a = Array.new(1..10) #llena el arreglo con numeros del 1 al 10

# definir arreglo sin instanciar Array
a = [1, 2, 3, 4, 5, 6]

# ====================
#   Modificar arreglos
# ====================

# agregar elementos
a.push(4) 
a << 5 
a.unshift(0) # agrega al inicio del array
a.insert(3, 'nuevo') # agrega al indice especificado, no reemplasa si existe
a += ["mandar al final del array"]


# eliminar elementos
a.pop # elimina el ultimo elemento
a.shift # elmina el primero
a.delete_at(3) # elimina del indice indicado
a.uniq # elimina los elementos repetidos
a.uniq! # para que el cambio que hacemos con a.uniq permanezca


# obtener elementos
array[3]  # : Obtiene el elemento del índice 3.
array[-2] # : Obtien el elementos del índice -2, contando de derecha a izquierda.
array[0..2] # : Obtiene los elemtentos desde el índice 0 hasta el índice 2.
array.first # : Obtiene el primer elemento del arreglo.
array.last # : Obtiene el último elemento del arreglo.
array.take(2) # : Obtiene los 2 primeros elementos del arreglo.
array.drop(2) # : Obtiene todos los elementos, excepto los dos primeros del arreglo.