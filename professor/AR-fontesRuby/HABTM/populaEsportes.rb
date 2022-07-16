
# -*- coding: utf-8 -*-
$:.push './'
require 'esporte.rb'

esporte = Esporte.new ({ :nome => "futebol"})
esporte.save
esporte = Esporte.new ({ :nome => "basquete"})
esporte.save
esporte = Esporte.new ({ :nome => "volei"})
esporte.save
esporte = Esporte.new ({ :nome => "truco"})
esporte.save
