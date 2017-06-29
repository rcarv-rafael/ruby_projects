# encoding: utf-8
require './features/pages/LoginPage.rb'
require './features/pages/LoggedPage.rb'

Dado(/^que esteja na tela de login$/) do
  @login_page = LoginPage.new
  @login_page.load
end

Quando(/^preencher os campos principais$/) do
  @login_page.preencher_campos
end

Quando(/^solicitar o login$/) do
  @login_page.clicar_login
end

Quando(/^acessar o sistema$/) do
  steps %Q{ Quando preencher os campos principais }
  steps %Q{ Quando solicitar o login }
end

Quando(/^solicitar a desconexao$/) do
  @logged_page = LoggedPage.new
  @logged_page.clicar_logoff
end

Entao(/^a mensagem "([^"]*)" aparece$/) do |mensagem|
  raise 'Mensagem nao encontrada' unless @login_page.texto_mensagem.match(mensagem)
end