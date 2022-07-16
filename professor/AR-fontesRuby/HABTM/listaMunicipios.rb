# -*- coding: utf-8 -*-
$:.push './'
require 'estado.rb'
require 'municipio.rb'

estados = Estado.all
estados.each do |estado|
  puts estado.nome
  municipios = estado.municipios
  municipios.each do |m|
    puts "    #{m.nome}"
  end
end
