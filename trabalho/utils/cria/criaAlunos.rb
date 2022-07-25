require 'rubygems' 
require 'active_record' 
 
ActiveRecord::Base.establish_connection :adapter => "sqlite3", 
     :database => "./Tabelas.sqlite3" 
 
ActiveRecord::Base.connection.create_table :alunos do |t|  
    t.string   :nome
    #nao preciso referenciar a matricula
    t.belongs_to :orientador, foreign_key: true
end 
