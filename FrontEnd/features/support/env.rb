require 'capybara/cucumber'
require 'magic_encoding'
require 'site_prism'
 
Capybara.default_driver = :selenium

$usuario = ENV['USUARIO']
$senha = ENV['SENHA']
