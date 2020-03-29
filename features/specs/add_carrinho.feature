#language: pt

Funcionalidade: Adicionar produto no carrinho 


Contexto:
Dado eu estar na pagina resultado de uma busca


@add_carrinho
Esquema do Cenario: Adicionar produto no carrinho com sucesso
Quando eu escolho um produto <determinado>
E adiciono o produto no carrinho
Entao eu verifico se o produto foi adicionado corretamente
Exemplos:
|     determinado       |
|            0          |


@add_indisponivel
Esquema do Cenario: Adicionar produto indisponível no carrinho
Quando eu escolho um produto <indisponivel>
Entao eu verifico se aparece a mensagem que nao pode adicionar ao carrinho
Exemplos:
| indisponivel|
|      10     |