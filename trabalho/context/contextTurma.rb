$:.push '..'
require './domain/turma.rb'

class ContextTurma

    def criaTurma(atributo_valor)
        turma = Turma.new (
            {atributo_valor[0] => atributo_valor[1]} )
        turma.save
        puts 'OK'
    end

    def excluiTurma(atributo_valor)
        turma = Turma.find_by({atributo_valor[0] => atributo_valor[1]})
        turma.delete
        puts 'OK'
    end

    def buscarTurma(atributo_valor)
        turma = Turma.find_by({atributo_valor[0] => atributo_valor[1]})
        puts turma.inspect
        puts 'OK'
    end

end