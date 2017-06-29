#language: pt

@busca_por_cep
Funcionalidade: Busca endereco por CEP

@cep_valido
Cenario: recuperando endereco com CEP valido

  Dado que pesquise pelo CEP "06460030"
  Entao eu terei uma resposta de "sucesso"
    E os detalhes de um endereco

@cep_invalido
Cenario: recuperando erro com CEP invalido

  Dado que pesquise pelo CEP "99999999"
  Entao eu terei uma resposta de "falha"



