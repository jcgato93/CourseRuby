=begin

Objetos en Ruby:

Ruby es un lenguaje orientado a objetos.
Casi todo en Ruby es un objeto.
Los objetos tienen datos (atributos)y comportamiento (métodos).
Los objetos colaboran con otros objetos.
La clases son las definiciones de los objetos, estas son algunas características:

Contenedor que tiene propiedades tales como métodos y variables.
Pueden heredar propiedades.
Permite herencia simple.

=end

class Ventilador

  #constructor
  def initialize(params)
    @marca = params[:marca]
    @velocidad = params[:velocidad]
    @status = params[:status]
  end

  def marca
    @marca
  end

  def presentacion
    "La Marca de este ventilador es #{@marca} y se encuenta: #{@status}, ¿Deseas encenderlo? (Si/No)"
  end

  def encender_ventilador(solicitud)
    if solicitud == 'Si'
      @status = 'encendido'
      puts 'El ventilador se ha encendido.'
      10.times {
        puts "La velocidad cambió a: #{cambiarVelocidad}"
      }
    else
      @status = 'apagado'
    end
  end

  def cambiarVelocidad
  if @velocidad >= 5
    @velocidad = 0
  else
    @velocidad += 1
  end
  end

end

obj_ventilador = Ventilador.new(marca:'XYZ', velocidad:0, status:'apagado')
puts obj_ventilador.presentacion
solicitud = gets.chomp
obj_ventilador.encender_ventilador(solicitud)
