require './facade/facadeTabelas'

class Resource
    facadeTabelas = FacadeTabelas.new

    puts "< operação > < tabela > { atributo = valor }"
    puts "nao use aspas nos atributos"
    while true
        input = gets.chomp

        input_array = input.split(/ /,-1 )
        funcao = input_array[0]
        tabela = input_array[1]
        atributo_valor = input_array[2..input_array.length - 1]
        atributo_valor.delete("=")
    
        case funcao
        when "inserir"
            puts "funcao inserir na tabela #{tabela}"
            facadeTabelas.inserir(tabela, atributo_valor)
        when "excluir"
            puts "funcao excluir na tabela #{tabela}"
            facadeTabelas.excluir(tabela, atributo_valor)
        when "buscar"
            puts "funcao busca na tabela #{tabela}"
            facadeTabelas.buscar(tabela, atributo_valor)
        else
            puts "funcao #{funcao} nao existe"
        end
    end
end