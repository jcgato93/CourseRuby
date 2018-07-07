#=======================================================================
#                               Estructura  selectiva
#=======================================================================




#======================
# if , elsif , else 
#======================
#con estas se evalua si se cumplen ciertas condiciones

puts 'Cual es tu nombre?'
nombre = gets.chomp

if nombre == 'Camilo'
    puts 'estas autorizado'
elsif nombre == 'otro'
    puts 'no estas autorizado'
else
    puts 'error de autenticacion'
end



#==============================
#  case , when , else
#==============================
# evalua una condicion y ejecuta la accion si se cumple  en alguno de los casos 
# especificados, tiene una ventaja sobre el if else y este no entre a evaluar cada caso

puts 'Cual es tu nombre?'
nombre = gets.chomp

resultado= case nombre
            when 'Camilo' then 'estas autorizado'
            when 'otro' then 'no estas autorizado'
            else 'error de autenticacion'
            end
