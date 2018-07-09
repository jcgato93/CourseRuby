=begin

La programación orientada a objetos tiene ciertas características, como por ejemplo, el encapsulamiento.
Estas son algunas características del encapsulamiento:

Exponer el comportamiento externo de la clase mediante métodos.
Proteger los datos internos.
Scopes en Ruby: public, protected, private.
Accessors.

Tipos de Accessors:

attr_reader
attr_writer
attr_accessor

Los modificadores de acceso son el acceso que le podemos dar a distintos métodos, estos pueden ser:

- Public. Default
- Private. Solo van a funcionar en esa clase, no se pueden llamar desde el objeto ni pueden heredar una clase hijo.
- Protected. No se pueden llamar una vez creado el objeto, pero sí va a poder heredar una clase hijo.

=end


# =============================
#  Definir alcanse de atributos
# =============================

# Class Ventilador
class Ventilador
  # attr_reader :marca, :velocidad # se establece como atributo de solo lectura "get"
  # attr_writer :marca, :velocidad  # se establace como atributo de solo escritura "set" y solo se puede acceder a su valor atraves de un metodo
  attr_accessor :marca, :velocidad # se establece como de lectura y escritura { get; set;}

  # Constructor
  def initialize(_params)
    @marca = _prams[:marca]
    @velocidad = 0
  end

  # retorna el valor de marca
  def presentacion
    "La marca del Ventilador es #{@marca}"
  end
end

obj = Ventilador.new(marca: 'XYZ')
obj.marca = 'ABC'
puts obj.presentacion # => 'ABC'



# ================================
#    Modificadores de acceso
# ================================

# metodo test
class Test
  # para de clarar un metodo de clase o metodo estatico usamos la palabla reservada self.[nombre metodo]
  def self.podemos
    '15kg'
  end

  public # por defecto un metodo es publico ,pueden ser invocado por cualquiera. Los métodos son public por defecto, excepto el método initialize que es privado. 
  def distribuidor
      'sony'
  end

  private # solo se pueden invocar desde el contexto del objecto actual. No se pueden invocar métodos private de otros objetos aunque sean de la misma clase.
  def color
    'rojo'
  end
  
  protected # pueden ser invocados por cualquier objeto de la clase o cualquier objeto de las clases heredadas.
  def hecho_en
    'china'
  end
end

