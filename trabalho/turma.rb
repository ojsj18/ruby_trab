# -*- coding: utf-8 -*-
require 'active_record'

ActiveRecord::Base.establish_connection :adapter => "sqlite3",
                                        :database => "./Tabelas.sqlite3" 

class Turma < ActiveRecord::Base;
    has_and_belongs_to_many :alunos, :dependent => :destroy
end


