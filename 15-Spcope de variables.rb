=begin
Los Scope identifican el alcance de una variable

=========================================
Características de las variables locales:
=========================================
Se usan a nivel de los métodos o bloques. Esto quiere decir que su tiempo de vida es solo dentro de un método o solo dentro de un bloque.
Deberían comenzar con minúscula o con _.
Siempre vamos a saber exactamente hasta dónde vive una variable local.


=========================================
Características de las variables de instancia:
=========================================

Solo va a tener un valor dentro de un objeto, es decir que su tiempo de vida es solo dentro de un objeto.
Solo cobra vida cuando vamos a iniciar una clase.
Todas las variables de instancia inician con un solo @

=========================================
Características de las variables de clase:
=========================================
Inician con dos @
Se considera una variable que pueda ser declarada apenas inicie la clase sin necesidad de de llamarla
a través de métodos o de inicializarla a través de métodos.

=========================================
Características de las variables globales:
=========================================
Se usan a nivel de todo el programa.
Deberían iniciar con $.

=========================================
¿Qué son las constantes?
=========================================
Tienen el mismo alcance que una variable, de acuerdo al lugar donde son declaradas.
Inician con una letra mayúscula o pueden ser todas mayúsculas.
No deberían cambiar su valor.

=end

# Variables Locales
nombre = 'Juan'
defined? nombre 
# => "local-variable"


#=======================
# Variable de Instancia
#=======================
#solo vive dentro del objeto amenos que este se instacie
class Ventilador
    def marca
        @marca= 'XYZ'
    end
end

puts @marca  # => error undefined

obj = Ventilador.new
puts obj.marca # => 'XYZ'





#=======================
# Variable de Clase
#=======================
class Ventilador
    @@velocidad = 0

    def initialize(max_velocidad)
        @max_velocidad= max_velocidad
    end

    def cambiar_nivel(veces)
        @@velocidad += veces
        "Cambiar velocidad" * veces
    end

    def total
        "la velocidad es #{@@velocidad}"
    end
end



#=======================
# Variable de Clase
#=======================
# pueden se usadas desde cualquier parte del programa
def resta(a, b)
    $resultado= a - b
    puts $resultado
end

resta(5, 3)
puts $resultado # => 2



#=======================
# Variable Constantes
#=======================
# Tienen un alcance de acuerdo al lugar donde fue declarada
# Inician con una letra mayuscula
# No deberian cambiar su valor
IGV = 0.18
defined? IGV
# => "constant"
