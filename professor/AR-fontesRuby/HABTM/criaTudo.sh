rm -f Tabelas.sqlite3
echo -n "criaEstados ..."
ruby criaEstados.rb 
echo "Ok"
echo -n "criaPessoas ..."
ruby criaPessoas.rb
echo "Ok"
echo -n "criaDocumentos ..."
ruby criaDocumentos.rb
echo "Ok"
echo -n "criaMunicipios ..."
ruby criaMunicipios.rb 
echo "Ok"
echo -n "criaEsportes ..."
ruby criaEsportes.rb 
echo "Ok"
echo -n "criaPessoaEsporte ..."
ruby criaPessoaEsporte.rb 
echo "Ok"

echo -n "populaEstados ..."
ruby populaEstados.rb
echo "Ok"
echo -n "populaPessoas ..."
ruby populaPessoasD.rb
echo "Ok"
echo -n "populaMunicipios ..."
ruby populaMunicipos.rb
echo "Ok"
echo -n "populaEsportes ..."
ruby populaEsportes.rb
echo "Ok"
echo -n "populaPessoasEsportes ..."
ruby populaPessoaEsporte.rb
echo "Ok"
