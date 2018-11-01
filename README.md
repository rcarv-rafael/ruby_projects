# Automação Ruby

Projetos básicos de automação utilizando a linguagem ruby e os seguintes frameworks:

  - Cucumber
  - Capybara
  - Site_prism
  - HTTParty

# Pré-Requisitos:

Instalação Ruby e o navegador Mozilla Firefox(utilizado para execução dos teste)
> Como são testes básicos não foram considerados outros navegadores, para isso poderiam ser gerados parametros durante a execução que uma configuração nos scripts possibilitaria suas execuções

## Frameworks

**Cucumber** - Utilizado para desenvolvimento e execução das funcionalidades e cénarios de teste, sempre levando em consideração o padrão: "Dado, Quando Então"
- Dado - Frase para um passo requisito para início da funcionalidade - "Dado que esteja na tela de login"
- Quando - Frase para um passo de ação para a funcionalidade - "Quando eu realizar o login"
- Então - Frase para um passo de resultado esperado da funcionalidade - "Então a tela logada é apresentada" 

### Front-end

* Capybara - Uma ferramenta para simular as ações em um navegador web
* Site_prism - Uma ferramenta para auxiliar no mapeamento de elementos das páginas web pelo capybara, facilitando a montagem de uma estrutura page_objects
> Com PageObjects juntamente com o framework Cucumber, podemos ter uma estrutura que facilita tanto a leitura das funcionalidades e cenários, quanto a manutenção dos elementos e manipulação dos mesmos de uma maneira segmentada


### Instalação

Primeiramente vamos instalar a gem do Bundler
- **Bundler** - será um gerenciador de gem's do ruby para facilitar a instalação do framework do projeto
No prompt de comando digitar:
> gem install bundler

Ainda no prompt de comando vá até a pasta do projeto onde se encontram as pastas 'FrontEnd' e 'BackEnd' e execute na linha de comando a seguinte instrução:
> bundle install

Precisamos deixar preparado o ambiente de execução do selenium, para isso será necessário instalar o driver para o firefox, um executável que o selenium utiliza para permitir que o capybara manipule o navegador.
Basta realizar o download de acordo com seu windows na página:
https://github.com/mozilla/geckodriver/releases


### Execução

Há 2 maneiras de executar estes projetos, ambas podem ter um relatório final.
na linha de comando dentro da pasta de cada projeto:
- BackEnd:
- - sem relatório
 > cucumber
- -  com relatório
 > cucumber --format html --out report.html

- FrontEnd:
- - sem relatório
 > cucumber report.html USUARIO=tomsmith SENHA=SuperSecretPassword! 
- -  com relatório
 > cucumber --format html --out report.html USUARIO=tomsmith SENHA=SuperSecretPassword!

Também podem ser executados pelo bat respectivo na pasta do projeto

**Para visualizar o relatório html, basta abri-lo na pasta respectiva de cada projeto**
