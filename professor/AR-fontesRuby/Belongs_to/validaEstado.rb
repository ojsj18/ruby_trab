# -*- coding: utf-8 -*-
$:.push './'
require 'estado.rb'

class EstadoValidator < ActiveModel::Validator
end


  est = Estado.new ()
  est.nome  = ""
  est.sigla = ""
  x = est.valid?
  puts est.errors.full_messages
