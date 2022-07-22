$:.push '..'
require './domain/estado.rb'

class ContextEstado

    def criaEstado(atributo_valor)
        est = Estado.new (
            {atributo_valor[0] => atributo_valor[1],
             atributo_valor[2] => atributo_valor[3]
            } )
        est.save
    end

    def excluiEstado(atributo_valor)
        est = Estado.find_by({atributo_valor[0] => atributo_valor[1]})
        est.delete
    end

    def buscarEstado(atributo_valor)
        est = Estado.find_by({atributo_valor[0] => atributo_valor[1]})
        puts est.inspect
    end

end