require 'capybara/cucumber'
require 'magic_encoding'
require 'site_prism'
require 'capybara-screenshot/cucumber'
 
Capybara.default_driver = :selenium

$usuario = ENV['USUARIO']
$senha = ENV['SENHA']