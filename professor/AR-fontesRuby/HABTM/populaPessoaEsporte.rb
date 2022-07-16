# -*- coding: utf-8 -*-
$:.push './'
require 'esporte.rb'
require 'pessoa.rb'

esporte1 = Esporte.find_by_nome("futebol")
pessoas = Pessoa.all
pessoas.each do |pessoa|
  pessoa.esportes << esporte1
end

pessoa1  = Pessoa.find_by_nome("Maria")
esportes = Esporte.all
esportes.each do |esporte|
  esporte.pessoas << pessoa1
end
