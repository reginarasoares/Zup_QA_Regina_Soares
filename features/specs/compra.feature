#language: pt

Funcionalidade: Pesquisar e adicionar produto no carrinho 


Contexto:
Dado eu estar na pagina inicial do site


Esquema do Cenario: Buscar e adiocionar produto no carrinho com sucesso
Quando eu faco uma busca valida por um <produto>
E escolho um <determinado> produto
E adiciono o produto no carrinho
Entao eu verifico verifico se o produto foi adicionado corretamente
Exemplos:
|                        produto                          |     determinado       |
|  "Alcool Isopropilico 250ml Com Bico Aplicador 1litro"  |            0          |
