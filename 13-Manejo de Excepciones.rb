=begin
El manejo de excepciones nos sirve para controlar los errores que Ruby nos arroja por defecto cuando ejecutamos un código.

Existen cierto tipo de palabras reservadas para este manejo de excepciones:

begin, end: Para definir un bloque.
rescue: Para controlar una excepción.
else: Código que se ejecuta si no hubo excepciones.
ensure: Para forzar que se ejecute código si se lanza o no una excepción.
raise o fail: Para lanzar una excepción.
=end


# ==============================
# manejo de excepcion  con raise
# ==============================
# ejemplo cuando se pasa cadena cuando se espera un numero
def porcentaje(a, b)
    raise TypeError, 'el 1er argumento no es un numero', if a.is_a? Numeric
    raise TypeError, 'el 2er argumento no es un numero', if b.is_a? Numeric

    (a * 100.0) / b     
end

porcentaje('10', 100)


# ==========
# rescue
# =========
def sumar(a,b)
    begin
        c =  a+b
    rescue # si llega a suceder un error se ejecuta el sig codigo
        puts "Nose puede sumar #{a} + #{b}"
    else # si NO llega a suceder un error se ejecuta el sig codigo
        puts c
    end
end



# ===========
# ensure
# ==========
# este se ejecuta sin importar si ocurre o no una excepcion
def sumar(a,b)
    begin
        c =  a+b
    rescue => error # si llega a suceder un error se ejecuta el sig codigo
        puts "El error es : #{error.message}"
    else # si NO llega a suceder un error se ejecuta el sig codigo
        puts c
    ensure # este se ejecuta sin importar si ocurre o no una excepcion
        return a
    end
end


=begin
=============
Excepciones estandar de Ruby
=============

Exception
NoMemoryError
ScriptError
LoadError
NotImplementedError
SyntaxError
SignalException
Interrupt
SystemExit
fatal


StandardError
    ArgumentError
    IOError
    NameError
        NoMethodError
    RangeError
    RuntimeError
    SecurityError
    SystemCallError
    SystemStackerror
    ThreadError
    TypeError
    ZeroDivisionError

=end