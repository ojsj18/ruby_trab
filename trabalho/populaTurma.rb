# -*- coding: utf-8 -*-
$:.push '../..'
require './domain/turma'
require 'active_record'

lista_turmas = 
  [
   {:nome => "ProgWeb" },
   {:nome => "SB"},
   {:nome => "Compiladores" }
  ]

lista_turmas.each do |e|
  turma = Turma.new()
  turma.nome = e[:nome]
  turma.save
  
end
