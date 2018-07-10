=begin

En Ruby hay un proceso que se llama Testing que consiste en un programa externo que podemos crear con el fin de probar nuestro código, también con esto podemos guardar ciertas características, ciertas funcionalidades que tengamos ya escritas. Esto quiere decir que por cada funcionalidad nosotros podemos tener cinco o más casos de uso.

Test Driven Development = Es una forma de cómo se podría desarrollar. Consta de 3 pasos:

1) Primero se escriben los test y hacemos que falle.
2) Escribir el código que haga que los casos de uso realmente pasen con el código que estamos escribiendo.
3) Refactor. Ver lo que acabamos de escribir y ordenarlo de acuerdo cómo nosotros estemos trabajando.

=end

=begin
Documentation
http://rspec.info/about/

1- Primero instalamos la gema rspec
   
    gem install rspec

2- creamos el archivo que ejecutara las pruebas,
 por convencio se escribe [nombre de archivo a probar]_spec.rb

3- en el archivo _spec importamos con 
    
    require_relative './archivo a probar'

4- crear el metodo de prueba

        RSpec.describe 'hola mundo' do 

            # se simula un caso de uso en el siguiente bloque de codigo, retorna true/false si paso o no la prueba
            it 'llamar metodo' do
                expect(hola_mundo).to eq 'Hola mundo!' # se especifica que se desea probar y cual es el resultado esperado
            end
        end

5- ejecutar la prueba 
    desde la consola 
    
    rspec [archivo]_spec.rb

    este nos retornara el numero de pruebas ejecutadas y cuantas fallaron

    Finished in 0.00598 seconds (files took 0.15095 seconds to load)
    1 example, 0 failures

=end