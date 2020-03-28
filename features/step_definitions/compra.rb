Dado("eu estar na pagina inicial do site") do
    visit "/"
    windows.last.maximize
end

Quando("eu faco uma busca por um {string}") do |name_produto|
    fill_in(name: "conteudo", with: name_produto)
    sleep(2)
    find("#h_search-btn").click
    sleep(2)
end
  
Quando("escolho um {int} produto") do |num_opcao|
    opcao = all(".gYIWNc") [num_opcao]
    @name_opcao = opcao.text.downcase
    opcao.click
    sleep(2)
end
  
Quando("adiciono o produto no carrinho") do
    find("#btn-buy").click
    sleep(2)

    within('.Content-sc-1393p9h-7') do
        find(".TouchableUI-sc-1i9za0i-6").click
        sleep(2)
    end
end
  
Entao("eu verifico se o produto foi adicionado corretamente") do
    puts @name_opcao
    escolha = find(".basket-productTitle").text.downcase
    expect(escolha). to eql @name_opcao
    puts escolha
end



#busca incorreta
Quando("eu faco uma busca por {string} que nao seja um produto") do |busca_incorreta|
    fill_in(name: "conteudo", with: busca_incorreta)
    sleep(2)
    find("#h_search-btn").click
    sleep(2)
end
  
Entao("eu verifico se aparece a mensagem que nenhum produto foi encontrado") do
    msg = find(".TextUI-sc-12tokcy-0.goIRTq").text
    expect(msg). to eql "Ops!"
end



#produto indisponivel
Quando("eu busco por um {string}") do |name_produto1|
    fill_in(name: "conteudo", with: name_produto1)
    sleep(2)
    find("#h_search-btn").click
    sleep(2)
end
  
Quando("escolho um produto que esta {int}") do |num_opcao1|
    page.execute_script ("window.scrollBy(0,1000)")
    opcao1 = all(".gYIWNc") [num_opcao1]
    sleep(2)
    opcao1.click
    sleep(2)
end
  
Entao("eu verifico se aparece a mensagem que nao pode adicionar ao carrinho") do
    msg_ind = find("#title-stock").text
    expect(msg_ind). to eql "Ops! Já vendemos o estoque"
end