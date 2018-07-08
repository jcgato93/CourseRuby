=begin
    Lista de métodos de arreglos en Ruby:

    include: Busca dentro del arreglo si existe o no el elemento que le preguntemos.
    map (map!): Funciona como each, pero adicional se puede editar o sobre escribir el valor de nuestro arreglo. Para que los cambios en el arreglo permanezcan, escribimos un signo de exclamación después del método.
    map &:even?: Even funciona en Ruby para indicarnos si el número es par o es impar. Al utilizarlo en el método map, nos va a ayudar a saber el estado de cada uno de los elementos que componen el arreglo.
    reduce : con este tambien podemos pasar un metodo que interactue con cada elemento del array
    select: Realiza una consulta entre cada uno de los elementos del arreglo y selecciona según la indicación que le demos.
    reject: Rechaza a todos los elementos del arreglo según la indicación que le demos.
    drop_while: Funciona como el método reject.
    delete_if: Este método también funciona similar al reject.
    keep_if: Funciona similar al método select.
    any?: Nos ayuda a saber si alguno de los elementos del arreglo cumple con la condición que le establezcamos.
    all?: Nos ayuda a saber si todos los elementos del arreglo cumplen con la condición que le establezcamos.
    & (intersección): Nos ayuda a crear una intersección diciéndonos qué elementos tenemos en común entre diferentes arreglos.
    asterisco (*) (por un entero y por un string): Nos ayuda a multiplicar los elementos del arreglo por el valor que le indiquemos.
    suma y resta
    collect: Es un alias del método map
    each_with_index: Nos va a devolver primero el valor y luego el index que estemos llamando.
    flatten!: Nos permite tener un arreglo simple.    

=end


a= [1,2,3,4,5,6]

is_include?= a.include? 3 # retorna true o false

a.map! { |i| i + 2}
# le suma un dos a cada valor del array  result => [3,4,5,6,7,8]


# con la siguiente comando podemos llamar un metodo que afecte a cada elemento
# del array , en este caso el metodo event? retorna true si el numero es par o false si es impar
a.map &(:event?) 
# result => [false,true,false,true,false,true]


a.reduce(:+) #en este caso llama al metodo suma que ira sumando cada elemto del array
# [3,4,5,6,7,8]  result => 33

a.reduce(100, :+) # para inicializar desde 100
# result => 133

# ejecutar un metodo por cada elemento
a.reduce do |first, second|
    if first > second
        first
    else
        second
    end

# seleccionar los elementos que cumplan una condicion
a.select {|i| i < 6}
# result => [3,4,5]

# Excluir los elemento que cumplan una condicion
a.reject {|i| i < 6}


# Excluir los elemento que cumplan una condicion
a.drop_while {|i| i < 6}

# Excluir los elemento que cumplan una condicion
a.delete_if {|i| i < 6}


# Evaluar si algun elemento cumple con una condicion
# en este caso saber si algun elemento es divisible por 7
a.any? {|i| i % 7 == 0}
# restul => true/false


# Evaluar si todos los elemento cumplen una condicion
a.all? {|i| i % 7 == 0}


# Encontrar la relacion de dos arrays (interseccion)
a = [1,2,3,4]
b = [3,4,5,6]

a & b
# result => [3,4]


# retorna un array que se ha ejecutado una accion
# en este caso retorna el array de los numeros multiplicados por si mismos
a.collect {|i| i * i}
# result => [9,16,25,36,49,64


# para imprimir tanto el index como el valor
a.each_with_index {|val, idx| puts idx, val}




# ==================================
#     hashes
# ==================================
hash = {'nombre' : 'juan'}
puts hash  # result => {:nombre => "juan"}

bhash = {apellido : 'castillo'}


# para combinar o sumar hashes 
hash.merge(bhash) # => {:nombre => "juan", :apellido => "castillo"}


# parsear hash to array
hash.to_a # => [[:nombre,"juan"],[:apellido, "castillo"]]

# parsear array to hash
a = [[:nombre,"juan"],[:apellido, "castillo"]]

a.to_hash
a.to_h # {:nombre => "juan", :apellido => "castillo"}

