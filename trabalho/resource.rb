require './facade/estadoFacade'

class Resource
    estadofacade = EstadoFacade.new

    puts "< operação > < tabela > { atributo = valor }"
    input = gets.chomp

    input_array = input.split(/ /,-1 )
    funcao = input_array[0]
    tabela = input_array[1]
    nome = input_array[2]
    sigla = input_array[3]

    case funcao
    when "inserir"
        puts "funcao inserir na tabela #{tabela}"
        estadofacade.inserir(tabela, nome, sigla)
    when "excluir"
        puts "funcao excluir na tabela #{tabela}"
        estadofacade.excluir(tabela, nome)
    when "buscar"
        puts "funcao busca na tabela #{tabela}"
        estadofacade.buscar(tabela, nome)
    when "edita"
        puts "funcao edita na tabela #{tabela}"
    else
        puts "funcao #{funcao} nao existe"
    end
end