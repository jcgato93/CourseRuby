=begin
    En matemáticas, la sucesión de Fibonacci es la siguiente sucesión infinita de números naturales

    0, 1, 1, 2,3,5,8,13,21,34,55,89,144,233......

    La sucesión comienza con los números 0 y 1,2​ y a partir de estos, «cada término es la suma de los dos anteriores», es la relación de recurrencia que la define.
=end


# buscar los 40 primeros numeros de la serie fibonacci

#este metodo retorna la hasta la cantidad de numeros de la serie
# que se pasa por parametro
def crear_serie(n)
    array = [1, 2]

    # times indica cuantas vecesdebe ejecutarse un fragmento de codigo
    (n - 2).times {
        array << array [-1] + array [-2]
    }
    
    return array
end


#retornar los inpares de un array
def arreglo_impares(array)
    new_array= []
    array.each do |element|
        if element % 2 != 0
            new_array << element
        end
    end
    return new_array
end

# sumar todos los numeros de un array
def suma_arreglo(array)
    array.reduce(:+)
end

puts fibonacci=crear_serie(40)

puts impares = arreglo_impares(fibonacci)

suma = suma_arreglo(impares)

puts "suma es #{suma}"
