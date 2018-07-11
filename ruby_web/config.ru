run Proc.new { |env|
    if env['PATH_INFO'] == '/'
        [200, {}, ['Hola mundo']]
    else
        [404, {}, ['No existe esta pagina']]
    end
}

#correr el server
# rackup  config.ru