# -*- coding: utf-8 -*-
$:.push './'
require 'estado.rb'

  est = Estado.new ()
  est.nome  = "NAO EXISTE"
  est.sigla = "NE"
  est.save

  est = Estado.find_by_sigla("NE")
  est.update({:sigla => "NN"})

  est = Estado.find_by_sigla("NN")
  est.sigla = "XX"
  est.save


  est = Estado.find_by_sigla("XX")
  est.destroy
