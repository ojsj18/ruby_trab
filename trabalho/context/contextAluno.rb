$:.push '..'
require './domain/aluno.rb'

class ContextAluno

    def criaAluno(atributo_valor)
        aluno = Aluno.new ({atributo_valor[0] => atributo_valor[1]} )
        aluno.save
        puts 'OK'
    end

    def excluiAluno(atributo_valor)
        aluno = Aluno.find_by({atributo_valor[0] => atributo_valor[1]})
        aluno.delete
        puts 'OK'
    end

    def buscarAluno(atributo_valor)
        aluno = Aluno.find_by({atributo_valor[0] => atributo_valor[1]})
        puts aluno.inspect
        puts 'OK'
    end

end