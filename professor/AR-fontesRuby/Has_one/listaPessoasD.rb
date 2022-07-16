# -*- coding: utf-8 -*-

$:.push './'
require 'pessoa.rb'
require 'estado.rb'
require 'documento.rb'


pessoas = Pessoa.all
pessoas.each do |p|
  print "#{p.nome} #{p.endereco} #{p.estado.sigla} #{p.estado.nome} "
  print "RG=#{p.documento.rg} CPF=#{p.documento.cpf} "
  puts  "Motorista=#{p.documento.motorista}"
end

