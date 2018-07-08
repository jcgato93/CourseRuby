=begin
Algunas características de los bloques en Ruby:

También llamados funciones sin nombre.
Van entre llaves {} o entre do…end.
Depende de un método asociado para funcionar.
Algunas características de Yield:

Ejecuta un bloque pasado como parámetro.
Es un patrón frecuente en Ruby.
Algunas características de los procs y lambdas:

Son métodos sin nombre.
Se pueden asignar a una variable.
Se tienen qué llamar (.call) para que se puedan ejecutar.
Lambdas es un método que está heredando todos los métodos que tiene procs.

=end
# ========================
# ejemplo de bloque
# =======================
def ejecutar(&block)
    if block_given? #evalua si se paso un block por parametro
        block.call    
    else
        puts 'No tiene un bloque'
    end
    
end

ejecutar { puts 'Hola !'}


# otra forma de hacerlo 
def ejecutar
    if block_given? #evalua si se paso un block por parametro
        yield    
    else
        puts 'No tiene un bloque'
    end
    
end

ejecutar { puts 'Hola !'}



# ======================
#   Procs y Lambdas
# ======================
saludar = lambda { puts 'Hola'}
saludar.call
# => Hola

saludar = lambda { |nombre| puts "Hola #{nombre}"}
saludar.call('Juan')
# => Hola Juan




# =========== Procs
saludar = proc { puts 'Hola'}
saludar.call
# => Hola

saludar = proc { |nombre| puts "Hola #{nombre}"}
saludar.call('Juan')
# => Hola Juan




