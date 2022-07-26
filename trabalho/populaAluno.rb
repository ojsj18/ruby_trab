# -*- coding: utf-8 -*-
$:.push '../..'
require './domain/docente'
require './domain/matricula'
require './domain/aluno'
require './domain/turma'
require 'active_record'

docente = Docente.new()
docente.nome = 'Bruno'
docente.save

lista_turmas = Turma.all

lista_alunos = 
  [
   {:nome => "Antonio" },
   {:nome => "Joao"},
   {:nome => "Maria" },
   {:nome => "Carlos"  },
   {:nome => "Gabriel"},
   {:nome => "Raul" },
   {:nome => "Gian"  },
   {:nome => "Giovani"  },
   {:nome => "Rafael" },
   {:nome => "Ovidio" }
  ]

lista_alunos.each do |e|
  aluno = Aluno.new()
  aluno.nome = e[:nome]
  aluno.docente = docente
  aluno.save

  i = rand(2)
  aluno.turmas << lista_turmas[i]
  #lista_turmas[i].alunos << aluno nao sei se precisa pois fica duplicado
  
  matricula = Matricula.new()
  matricula.grr = 'GRR'+ rand(30).to_s
  matricula.aluno = aluno
  matricula.save

end
