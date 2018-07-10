=begin
Los Mixins están diseñados para que los módulos nos sirvan como herencia múltiple.
Algunas características de los mixins son:

Mezcla entre módulos y clases.
Es una clase que implementa un módulo.
Se puede crear mediante:
    Método include
    Método extend
=end


# =======================
#    include
# =======================
module Conversion
    def Palabra
        return 'uno' if @valor ==1
        'mucho'        
    end
end

class Numero
    include Conversion
    attr_accessor :valor
end

num = Numero.new
num.valor = 1

puts num.palabra


# =======================
#    extend
# =======================

# llama al modulo desde el objeto
class Numero
    attr_accessor :valor
    def palabra
        @valor.to_s
    end
end

num = Numero.new
num.valor = 10

puts num.Palabra

num.extend(Conversion)
puts num.palabra