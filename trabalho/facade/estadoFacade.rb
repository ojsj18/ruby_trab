$:.push '..'
require './context/contextEstado'

class EstadoFacade

    def inserir(tabela, nome, sigla)
        context = ContextEstado.new
        puts "inserir na tabela #{tabela}"
        context.criaEstado(nome, sigla)
    end 

    def excluir(tabela, nome)
        context = ContextEstado.new
        puts "excluir na tabela #{tabela}"
        context.excluiEstado(nome)
    end 

    def buscar(tabela, nome)
        context = ContextEstado.new
        puts "buscar na tabela #{tabela}"
        context.buscarEstado(nome)
    end

end