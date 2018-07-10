=begin

Web Scraping es el proceso de extracción de información de los recursos que se encuentran en la World Wide
Web y la clasificación de datos no estructurados (generalmente se encuentran en páginas HTML) en forma 
estructurada, como hojas de cálculo o tablas de bases de datos.

=end


# gem install nokogiri

require'nokogiri' # para manipular el archivo html
require'open-uri' # para abrir un enlace externo

url = 'http://www.reactiongifs.com/'
posts = []
moreEntries = true
while moreEntries do
	puts "Chequeando: #{url}"
	puts '-------------------------'
	document = Nokogiri::HTML(open(url)).css('div#main') # tomar un fragmento de la pagina
	document.css('div.post').each do |post|
		unless post.css('img').empty?
			gif = {title: post.css('h2').text, img: post.css('img').attr('src')}
			posts << gif
			puts gif[:title]
			puts gif[:img]
		end
	end

   	moreEntries = document.css('div.nav-entries > div.nav-next').count > 0 ? true:false
   	if moreEntries then
   		url = document.css('div.nav-entries > div.nav-next > a').attr('href')
   	end
end