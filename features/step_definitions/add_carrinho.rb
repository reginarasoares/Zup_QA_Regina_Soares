#contexto
Dado("eu estar na pagina resultado de uma busca") do
    visit "/busca/alcool-isopropilico-bico"
    windows.last.maximize
end



#add_carrinho
Quando("eu escolho um produto {int}") do |num_opcao|
    page.execute_script ("window.scrollBy(0,500)")
    opcao = all(".gYIWNc") [num_opcao]
    @name_opcao = opcao.text.downcase
    opcao.click
end
  
Quando("adiciono o produto no carrinho") do
    find("#btn-buy").click

    within('.Content-sc-1393p9h-7') do
        find(".TouchableUI-sc-1i9za0i-6").click
    end
end
  
Entao("eu verifico se o produto foi adicionado corretamente") do
    escolha = find(".basket-productTitle").text.downcase
    expect(escolha). to eql @name_opcao
end



#produto indisponivel
Entao("eu verifico se aparece a mensagem que nao pode adicionar ao carrinho") do
    msg_ind = find("#title-stock").text
    expect(msg_ind). to eql "Ops! Já vendemos o estoque"
end