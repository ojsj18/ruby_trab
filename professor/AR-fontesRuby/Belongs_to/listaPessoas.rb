# -*- coding: utf-8 -*-

$:.push './'
require 'estado.rb'
require 'pessoa.rb'

# Método 1 : buscando a chave primária na outra tabela
pessoa = Pessoa.find(1)
est = Estado.find(pessoa.estado_id)
puts "#{pessoa.nome} #{pessoa.endereco} #{est.sigla} #{est.nome}"


# Método 2 : usando o atributo "estado" como intermediário para a
# tabela de estados.
pessoas = Pessoa.all
pessoas.each do |p|
  puts "#{p.nome} #{p.endereco} #{p.estado.sigla} #{p.estado.nome}"
end
