=begin

Esta característica permite definir distintos comportamientos para un método dependiendo de
la clase sobre la que se realize la implementación. 
En todo momento tenemos un único medio de acceso, sin embargo se podrá acceder a métodos distintos.

Estas son algunas características del Polimorfismo:

Las subclases pueden definir su comportamiento propio y compartir la funcionalidad de la clase padre.
los métodos se pueden sobre-escribir.

=end

# ===================
#  Diferentes comportamientos
# ===================
class Ave
    def volar
        puts 'Puedo volar'
    end
end


class Pinguino < Ave
    def volar
        puts 'No puedo volar'
    end  
end


ave =Aver.new 
pinguino = Pinguino.new

ave.volar
pinguino.volar




# ===========================
#  Sobreescritura de Metodos
# ===========================
class Persona
    attr_accessor :nombre
    def initialize(nombre)
        @nombre = nombre
    end

    def dormir(n)
        print "Durmiendo #{n.to_s} horas"
    end
end

class Empleado < Persona
    def initialize(_params)
        super(_params[:nombre])
        @apellido = _params[:apellido]
    end

    def dormir
        super(n)
        puts 'en el trabajo'
    end

end


persona = Empleado.new
persona.nombre
persona.dormir(5)
