#language: pt

@end_to_end
Funcionalidade: Pesquisar e adicionar um produto no carrinho



Esquema do Cenario: Buscar produto com sucesso
Dado eu estar na pagina inicial do site
Quando eu faco uma busca por um <produto>
Entao eu verifico se a busca foi feita corretamente
Exemplos:
|                        produto                          |
|  "Alcool Isopropilico 250ml Com Bico Aplicador"  |


Esquema do Cenario: Adicionar produto no carrinho com sucesso
Quando eu escolho um produto <determinado>
E adiciono o produto no carrinho
Entao eu verifico se o produto foi adicionado corretamente
Exemplos:
|     determinado       |
|            0          |