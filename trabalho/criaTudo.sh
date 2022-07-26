rm -f Tabelas.sqlite3
echo -n "criaAlunos ..."
ruby criaAlunos.rb 
echo "Ok"
echo -n "criaMatriculas ..."
ruby criaMatriculas.rb
echo "Ok"
echo -n "criaDocentes ..."
ruby criaDocentes.rb
echo "Ok"
echo -n "criaTurmas ..."
ruby criaTurmas.rb 
echo "Ok"
echo -n "criaAlunoTurma ..."
ruby criaAlunoTurma.rb 
echo "Ok"

echo "Populando---------"
echo "Popula turma"
ruby populaTurma.rb
echo "Ok"
echo "Popula aluno, matricula e docente(orientador) e turmas"
ruby populaAluno.rb
echo "Ok"