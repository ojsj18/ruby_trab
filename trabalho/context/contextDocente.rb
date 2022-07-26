$:.push '..'
require './domain/docente.rb'

class ContextDocente

    def criaDocente(atributo_valor)
        docente = Docente.new ({atributo_valor[0] => atributo_valor[1]} )
        docente.save
        puts 'OK'
    end

    def excluiDocente(atributo_valor)
        docente = Docente.find_by({atributo_valor[0] => atributo_valor[1]})
        docente.delete
        puts 'OK'
    end

    def buscarDocente(atributo_valor)
        docente = Docente.find_by({atributo_valor[0] => atributo_valor[1]})
        puts docente.inspect
        puts 'OK'
    end

end