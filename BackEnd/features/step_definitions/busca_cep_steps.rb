# encoding: utf-8

Dado(/^que pesquise pelo CEP "([^"]*)"$/) do |cep_informado|
  @busca_cep = HTTParty.get("http://correiosapi.apphb.com/cep/#{cep_informado}")
end

Entao(/^eu terei uma resposta de "([^"]*)"$/) do |esperado|
  case esperado
  when 'sucesso'
    raise 'Retorno divergente: #{@busca_cep.response}' if !@busca_cep.success?
  when 'falha'
    raise 'Retorno divergente: #{@busca_cep.response}' if @busca_cep.success?
  end
end

Entao(/^os detalhes de um endereco$/) do
  raise "CEP sem dados" if @busca_cep['cep'].nil? 
    puts "CEP: #{@busca_cep['cep']}"
  raise "Tipo de Logradouro sem dados" if @busca_cep['tipoDeLogradouro'].nil? 
    puts "Tipo de Logradouro: #{@busca_cep['tipoDeLogradouro']}"
  raise "Logradouro sem dados" if @busca_cep['logradouro'].nil?
    puts "Logradouro: #{@busca_cep['logradouro']}"
  raise "Bairro sem dados" if @busca_cep['bairro'].nil? 
    puts "Bairro: #{@busca_cep['bairro']}"
  raise "Cidade sem dados" if @busca_cep['cidade'].nil? 
    puts "Cidade: #{@busca_cep['cidade']}"
  raise "Estado sem dados" if @busca_cep['estado'].nil? 
    puts "Estado: #{@busca_cep['estado']}"
end
