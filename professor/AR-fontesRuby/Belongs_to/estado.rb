# -*- coding: utf-8 -*-
require 'active_record'

class EstadoValidator < ActiveModel::Validator
   def validate(record)
     puts "PASSOU"
     puts "#{record.inspect}"
     false
   end
end


ActiveRecord::Base.establish_connection :adapter => "sqlite3",
                                        :database => "Tabelas.sqlite3" 


class Estado < ActiveRecord::Base; 
  validates :sigla, presence: true, message: "ERRO"
#  validates_with  EstadoValidator 
end



