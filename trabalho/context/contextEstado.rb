$:.push '..'
require './domain/estado.rb'

class ContextEstado

    def criaEstado(nome, sigla)
        est = Estado.new ({:nome => nome, :sigla => sigla} )
        est.save
    end

    def excluiEstado(nome)
        est = Estado.find_by(nome: nome)
        est.delete
    end

    def buscarEstado(nome)
        est = Estado.find_by_nome(nome)
        puts est.nome
        puts est.sigla
    end

end