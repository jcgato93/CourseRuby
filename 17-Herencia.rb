=begin
Características de las herencias en Ruby:

Mecanismo para reutilizar código.
Una clase (hija) extiende el comportamiento de otra clase (padre).
Aplican las modificaciones de acceso.
Se pueden sobre-escribir los métodos.
Todas las clases heredan de BasicObject.
No existe herencia múltiple.
Ruby tiene una palabra reservada para el caso de herencias llamada “super”. Lo que hace super es poder obtener todas las líneas de código que tiene el mismo método en una clase padre.

=end



# ========================
#    Herencia Simple 
# =======================
# clase padre
class Mamifero

    def respirar
        puts 'Esta respirando'
    end
end

# clase hijo
class Perro < Mamifero # esta es la forma de heredar de otra clase

    def ladrar
        puts 'esta ladrando'        
    end
end


mamifero = Mamifero.new
perro =Perro.new

perro.respirar
perro.ladrar



# ==================
#   Super
# ==================

# Al momento de ejecutar un método de un objeto en Ruby, el interprete busca ese método en la definición de la clase, 
# si lo encuentra, lo ejecuta, y si no, lo busca en la superclase

class Persona
    attr_accessor :nombre

    def initialize(nombre)
      @nombre = nombre
    end
end

class Empleado < Persona

    def initialize
        super('juan')        
    end
end

persona = Persona.new('camilo')
empleado = Empleado.new

puts persona.nombre
puts empleado.nombre