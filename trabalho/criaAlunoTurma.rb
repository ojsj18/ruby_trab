require 'rubygems' 
require 'active_record' 
 
ActiveRecord::Base.establish_connection :adapter => "sqlite3", 
:database => "./Tabelas.sqlite3" 
 
ActiveRecord::Base.connection.create_table :alunos_turmas, id: false do |t|  
    t.belongs_to :aluno, :unique => true
    t.belongs_to :turma, :unique => true 
end
