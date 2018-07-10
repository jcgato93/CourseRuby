=begin

Conjunto de metodos, variables y constantes

Clse no instanciable

Herencia multiple

Puede interpretarse como los name space para encapsular clases y metodos
=end

module  Area
    PI = 3.14
    class Circulo
        def self.definicion
            "PI #{PI} por radio al cuadrado"    
        end
    end

    def Area.cuadrado
        'Lado al cuadrado'
    end
end

puts Area::PI
puts Area.circulo


module Perimetro
    class Circula
        PI= 3.14

        def initialize
            
        end

        def self.definicion
            "2 veces #{PI} por radio"            
        end
    end
    
end


