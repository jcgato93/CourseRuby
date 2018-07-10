=begin
RubyGems es la herramienta preferida por la comunidad para distribuir código. Por lo general, las gemas 
tienen enlaces hacia la documentación e información sobre los desarrolladores, así que es un buen punto
de partida para comenzar a explorar el mundo Ruby.


Buscando gemas
El comando search puede ser usado para buscar gemas con determinado nombre. Para buscar la palabra “html” en el nombre de una gema:

$ gem search html --remote

*** REMOTE GEMS ***

html-sample (1.0, 1.1)
(La opción --remote / -r indica que estamos buscando entre las gemas oficiales de RubyForge).

Instalando una gema
Una vez que sabes qué gema te gustaría instalar:

$ gem install html-sample
Incluso puedes instalar una versión específica de la biblioteca utilizando la opción --version.

$ gem install html-sample --version 1.0
Alistando todas las gemas
Para obtener una lista completa de las gemas en RubyForge:

$ gem list --remote
Para alistar sólo las gemas que tienes instaladas, quita la opción—remote.

$ gem list

=end


# =========================
#  Como usar las gems
# =========================
require 'fibonacci'  #https://www.rubydoc.info/gems/fibonacci/0.1.8/Fibonacci

fib = Fibonacci.new
fib.print (10)
# =>
# 0
# 1
# 1
# 2
# 3
# 5
# 8
# 13
# 21
# 34
