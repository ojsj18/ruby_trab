$:.push '..'
require './domain/aluno.rb'
require './domain/matricula.rb'

class ContextAluno

    def criaAluno(atributo_valor)
        aluno = Aluno.new ({atributo_valor[0] => atributo_valor[1]} )
        if(atributo_valor[2] == 'matricula')
            matricula = Matricula.find_by_grr(atributo_valor[3])
            matricula.aluno = aluno
            matricula.save
        end
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