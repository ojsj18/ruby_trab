$:.push '..'
require './context/contextAluno'
require './context/contextMatricula'
require './context/contextTurma'
require './context/contextDocente'

class FacadeTabelas

    def initialize
        @contextAluno = ContextAluno.new
        @contextTurma = ContextTurma.new
        @contextMatricula = ContextMatricula.new
        @contextDocente = ContextDocente.new
    end

    def inserir(tabela, atributo_valor)
        case tabela
        when "aluno"
            puts "inserir na tabela #{tabela}"
            @contextAluno.criaAluno(atributo_valor)
        when "matricula"
            puts "inserir na tabela #{tabela}"
            @contextMatricula.criaMatricula(atributo_valor)
        when "docente"
            puts "inserir na tabela #{tabela}"
            @contextDocente.criaDocente(atributo_valor)
        when "turma"
            puts "inserir na tabela #{tabela}"
            @contextTurma.criaTurma(atributo_valor)
        else
            puts "tabela #{funcao} nao existe"
        end
    end 

    def excluir(tabela, atributo_valor)
        case tabela
        when "aluno"
            puts "excluir na tabela #{tabela}"
            @contextAluno.excluiAluno(atributo_valor)
        when "matricula"
            puts "excluir na tabela #{tabela}"
            @contextMatricula.excluiMatricula(atributo_valor)
        when "docente"
            puts "excluir na tabela #{tabela}"
            @contextDocente.excluiDocente(atributo_valor)
        when "turma"
            puts "excluir na tabela #{tabela}"
            @contextTurma.excluiTurma(atributo_valor)
        else
            puts "tabela #{funcao} nao existe"
        end

    end 

    def buscar(tabela, atributo_valor)
        case tabela
        when "aluno"
            puts "buscar na tabela #{tabela}"
            @contextAluno.buscarAluno(atributo_valor)
        when "matricula"
            puts "buscar na tabela #{tabela}"
            @contextMatricula.buscarMatricula(atributo_valor)
        when "docente"
            puts "buscar na tabela #{tabela}"
            @contextDocente.buscarDocente(atributo_valor)
        when "turma"
            puts "buscar na tabela #{tabela}"
            @contextTurma.buscarTurma(atributo_valor)
        else
            puts "tabela #{funcao} nao existe"
        end
    end

end