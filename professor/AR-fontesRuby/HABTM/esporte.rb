# -*- coding: utf-8 -*-
require 'active_record'

ActiveRecord::Base.establish_connection :adapter => "sqlite3",
                                        :database => "Tabelas.sqlite3" 


class Esporte < ActiveRecord::Base; 
  belongs_to :estado
  has_one    :documento
  has_and_belongs_to_many :pessoas, -> { uniq }
end
