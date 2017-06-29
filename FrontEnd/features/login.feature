#language: pt
#encoding: utf-8

@login
Funcionalidade: Validacao de Login


@realizar_login
Cenario: Realizar um acesso valido
    Dado que esteja na tela de login
    Quando preencher os campos principais
    E solicitar o login
    Entao a mensagem "You logged into a secure area" aparece

@logar_deslogar
Cenario: Realizar um acesso e desconexao
    Dado que esteja na tela de login
    Quando acessar o sistema
    E a mensagem "You logged into a secure area" aparece
    E solicitar a desconexao
    Entao a mensagem "You logged out of the secure area" aparece
