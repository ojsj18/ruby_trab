require_relative 'contextEstado'

class EstadoFacade
    

    def inserir(tabela, nome, sigla)
        context = ContextEstado.new
        puts "testando na tabela #{tabela}"
        context.criaEstado(nome, sigla)
    end 

end