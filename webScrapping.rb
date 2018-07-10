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



#=========================
# Descargando imagenes
#=========================

require'nokogiri'
require'open-uri'

url = 'http://www.reactiongifs.com/page/'
document = nil
contador = 0

begin
    puts "Pagina: #{contador}"

    begin
    document = Nokogiri::HTML(open(url + contador.to_s + '/'))
    rescueOpenURI::HTTPError => e
        document = nil
    end
    div_main = document.css('div#main')
    div_main.css('div.post').each do |post|
      title = post.css('h2').text
      gif_url = post.css('div.entry img').attr('src')
      File.open("gifs/#{title}.gif", 'w') do |new_file|
        puts "Descargando: #{title}"
        open(gif_url, 'r') do |gif|
            new_file.write(gif.read)
        end
      end  
    end
    contador+=1
end until document.nil?
