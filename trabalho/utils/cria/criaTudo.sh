rm -f Tabelas.sqlite3
echo -n "criaAlunos ..."
ruby criaAlunos.rb 
echo "Ok"
echo -n "criaMatriculas ..."
ruby criaMatriculas.rb
echo "Ok"
echo -n "criaOrientadores ..."
ruby criaOrientadores.rb
echo "Ok"
echo -n "criaTurmas ..."
ruby criaTurmas.rb 
echo "Ok"
echo -n "criaAlunoTurma ..."
ruby criaTurmaAluno.rb 
echo "Ok"