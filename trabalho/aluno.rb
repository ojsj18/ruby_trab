# -*- coding: utf-8 -*-
require 'active_record'

ActiveRecord::Base.establish_connection :adapter => "sqlite3",
                                        :database => "./Tabelas.sqlite3" 


class Aluno < ActiveRecord::Base
  has_one  :matricula, :dependent => :destroy
  belongs_to :docente 
  has_and_belongs_to_many :turmas
  
end


