#language: pt

Funcionalidade: Pesquisar e adicionar produto no carrinho 


Contexto:
Dado eu estar na pagina inicial do site


@end_to_end
Esquema do Cenario: Buscar e adiocionar produto no carrinho com sucesso
Quando eu faco uma busca por um <produto>
E escolho um <determinado> produto
E adiciono o produto no carrinho
Entao eu verifico se o produto foi adicionado corretamente
Exemplos:
|                        produto                          |     determinado       |
|  "Alcool Isopropilico 250ml Com Bico Aplicador 1litro"  |            0          |



@busca_incorreta
Esquema do Cenario: Preencher o campo de busca incorretamente
Quando eu faco uma busca por <algo> que nao seja um produto
Entao eu verifico se aparece a mensagem que nenhum produto foi encontrado
Exemplos:
|   algo   |
| "123456" |
|  "////"  |