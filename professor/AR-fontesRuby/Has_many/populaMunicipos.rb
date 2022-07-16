# -*- coding: utf-8 -*-
$:.push './'
require 'estado.rb'
require 'municipio.rb'

estado_pr = Estado.find_by_sigla("PR")

municipio = Municipio.new ()
municipio.nome = "Abatiá"
municipio.estado = estado_pr
municipio.save
municipio = Municipio.new ()
municipio.nome = "Adrianópolis"
municipio.estado = estado_pr
municipio.save

puts "-----"

 estado_pr = Estado.find_by_sigla("PR")
 puts estado_pr.nome
 municipios_pr = estado_pr.municipios
 municipios_pr.each do |m|
  puts m.nome
end

