$:.push '..'
require './domain/estado.rb'

class ContextEstado

    def criaEstado(nome, sigla)
        est = Estado.new ({:nome => nome, :sigla => sigla} )
        est.save
    end

end