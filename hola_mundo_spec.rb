require_relative './hola_mundo'

RSpec.describe 'hola mundo' do 

    # se simula un caso de uso en el siguiente bloque de codigo, retorna true/false si paso o no la prueba
    it 'llamar metodo' do
        expect(hola_mundo).to eq 'Hola mundo!' # se especifica que se desea probar y cual es el resultado esperado
    end
end