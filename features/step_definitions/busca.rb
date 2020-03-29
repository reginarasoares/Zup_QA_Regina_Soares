#contexto
Dado("eu estar na pagina inicial do site") do
    visit "/"
    windows.last.maximize
end



#busca
Quando("eu faco uma busca por um {string}") do |name_produto|
    @produto = name_produto.downcase
    fill_in(name: "conteudo", with: @produto)
    sleep(2)
    find("#h_search-btn").click
    sleep(2)
end

Entao("eu verifico se a busca foi feita corretamente") do
    sleep(2)
    resultado = all(".gYIWNc") [0]
    puts resultado.text.downcase
    expect(resultado.text.downcase).to include(@produto)
end



#busca_incorreta
Entao("eu verifico se aparece a mensagem que nenhum produto foi encontrado") do
    msg = find(".TextUI-sc-12tokcy-0.goIRTq").text
    expect(msg). to eql "Ops!"
end