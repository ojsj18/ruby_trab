$:.push '..'
require './context/contextEstado'

class EstadoFacade

    def initialize
        @context = ContextEstado.new
    end

    def inserir(tabela, atributo_valor)
        case tabela
        when "estado"
            puts "inserir na tabela #{tabela}"
            @context.criaEstado(atributo_valor)
        else
            puts "tabela #{funcao} nao existe"
        end
    end 

    def excluir(tabela, atributo_valor)
        case tabela
        when "estado"
            puts "excluir na tabela #{tabela}"
            @context.excluiEstado(atributo_valor)
        else
            puts "tabela #{funcao} nao existe"
        end

    end 

    def buscar(tabela, atributo_valor)
        case tabela
        when "estado"
            puts "buscar na tabela #{tabela}"
            @context.buscarEstado(atributo_valor)
        else
            puts "tabela #{funcao} nao existe"
        end
    end

end