# -*- coding: utf-8 -*-
require 'active_record'

ActiveRecord::Base.establish_connection :adapter => "sqlite3",
                                        :database => "./Tabelas.sqlite3"  


class Docente < ActiveRecord::Base
  has_many :alunos, :dependent => :destroy  
end


