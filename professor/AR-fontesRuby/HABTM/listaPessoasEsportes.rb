# -*- coding: utf-8 -*-
$:.push './'
require 'esporte.rb'
require 'pessoa.rb'

pessoas = Pessoa.all
pessoas.each do |pessoa|
  esportes = pessoa.esportes
  print "#{pessoa.nome}->"
  esportes.each do |esporte|
    print "#{esporte.nome} "
  end
  puts
end

esportes = Esporte.all
esportes.each do |esporte|
  pessoas = esporte.pessoas
  print "#{esporte.nome}->"
  pessoas.each do |pessoa|
    print "#{pessoa.nome} "
  end
  puts
end
