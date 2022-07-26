$:.push '..'
require './domain/matricula.rb'
require './domain/aluno.rb'

class ContextMatricula

    def criaMatricula(atributo_valor)
        matricula = Matricula.new ({atributo_valor[0] => atributo_valor[1]})
        if(atributo_valor[2] == 'aluno')
            aluno = Aluno.find_by_nome(atributo_valor[3])
            matricula.aluno = aluno
        end
        matricula.save
        puts 'OK'
    end

    def excluiMatricula(atributo_valor)
        matricula = Matricula.find_by({atributo_valor[0] => atributo_valor[1]})
        matricula.delete
        puts 'OK'
    end

    def buscarMatricula(atributo_valor)
        matricula = Matricula.find_by({atributo_valor[0] => atributo_valor[1]})
        puts matricula.inspect
        puts 'OK'
    end

end