# -*- coding: utf-8 -*-

$:.push './'
require 'pessoa.rb'
require 'estado.rb'


# Método 1: inclusão via chave primária
p = Pessoa.new ({:sobrenome => "Silva", :nome => "Joao", 
                 :endereco => "Rua 1"})
p.estado_id = 1
p.save

# Método 2: inclusão pelo id obtido pela busca na tabela
p = Pessoa.new ({:sobrenome => "Silva", :nome => "Jose", 
                 :endereco => "Rua 2"})
est = Estado.find_by_sigla("AL")
p.estado_id = est.id
p.save

# Método 3: inclusão usando o objeto 
p = Pessoa.new ({:sobrenome => "Silva", :nome => "Maria", 
                 :endereco => "Rua 3"})
est = Estado.find_by_sigla("AM")
p.estado = est
p.save
