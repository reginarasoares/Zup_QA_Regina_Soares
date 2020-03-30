# Desafio Zup - automação Web

## Considerações

1. Organização do código
<br>A atividade foi dividida em 3 passos. 
<br>- "busca" testa a função de busca, contendo um caso de sucesso e um fluxo alternativo.
<br>- "add_carrinho" testa a funcionalidade de adicionar um produto ao carrinho, e também contem um caso de sucesso e um fluxo alternativo
<br>- "end_to_end" testa as funções de busca e adição ao carrinho com sucesso, de ponta a ponta.

2. Validação da busca
<br>- Para validar a busca, foram consideradas diferentes as palavras acentuadas de não-acentuadas. Assim ao buscar por um "sofá", caso o resultado seja "sofa", será considerado um erro de busca.
<br>- Busca com palavras compostas foram consideradas como um único termo. Assim ao buscar por uma "caneca vermelha", caso o resultado seja "caneca de porcelana vermelha", será considerado um erro de busca. Entretando se o resultado for "caneca vermelha de porcelana", a busca será validada, pois o resultado contém o termo da pesquisa.
<br>- A validação dos resultados de busca são para todos os itens da primeira página de resultados.

3. Relatórios automatizados
<br>- Ao executar um teste, será gerado um relatório, no seguinte caminho:
<br>reports/relatorios/features.html
<br>A cada nova execução, o arquivo html é sobrescrito.




## Procedimentos para rodar automação
__Windows__
1. Instalação do Ruby
<br>Acesse o link abaixo e instale a versão mais recente do ruby com a versão DEVKIT
<br>https://rubyinstaller.org/downloads/
<br>Para verificar se a instalação foi bem sucedida, abra o terminal e utilize o comando:
<br>ruby -v


2. Instalação das gems
<br>Utilize o terminal para instalar as seguintes dependências:
<br>GEM INSTALL BUNDLER "Gerenciador de GEMS"
<br>GEM INSTALL RSPEC "Ferramenta de suporte ao BDD"
<br>GEM INSTALL CUCUMBER "Ferramenta de desenvolvimento orientado a comportamento"
<br>GEM INSTALL CAPYBARA "Ferramenta de automação de testes"
<br>GEM INSTALL SELENIUM-WEBDRIVER "Ferramenta para testes de interface"

3. Download chromedriver
<br>Acesse o link abaixo e instale o driver com a versão corresponde ao chrome que já utiliza. Salve na pasta raiz do projeto
<br>https://chromedriver.chromium.org/downloads

4. Execução
<br>Abra o terminal e execute o comando abaixo para instalar as dependências.
<br>bundle install
<br>Em seguida você conseguirá executar os cenários de teste com o comando
<br>cucumber -t@tag
