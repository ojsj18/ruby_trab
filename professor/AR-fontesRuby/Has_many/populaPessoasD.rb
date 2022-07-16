# -*- coding: utf-8 -*-

$:.push './'
require 'pessoa.rb'
require 'estado.rb'
require 'documento.rb'

p = Pessoa.new ({:sobrenome => "Silva", :nome => "Joao", 
                 :endereco => "Rua 1"})
p.estado  = Estado.find_by_sigla("AL")
doc = Documento.new ({:rg => "RG-1", :cpf => "CPF-1", :motorista =>"Moto-1"})
doc.pessoa = p
doc.save
p.save

p = Pessoa.new ({:sobrenome => "Silva", :nome => "Jose", 
                 :endereco => "Rua 2"})
p.estado = Estado.find_by_sigla("AM")

doc = Documento.new ({:rg => "RG-2", :cpf => "CPF-2", :motorista =>"Moto-2"})
doc.pessoa = p
doc.save

p = Pessoa.new ({:sobrenome => "Silva", :nome => "Maria", 
                 :endereco => "Rua 3"})
p.estado = Estado.find_by_sigla("AM")
doc = Documento.new ({:rg => "RG-3", :cpf => "CPF-3", :motorista =>"Moto-3"})
doc.pessoa = p
doc.save
