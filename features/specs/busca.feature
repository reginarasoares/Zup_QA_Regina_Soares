#language: pt

Funcionalidade: Pesquisar um produto


Contexto:
Dado eu estar na pagina inicial do site


@busca
Esquema do Cenario: Buscar produto com sucesso
Quando eu faco uma busca por um <produto>
Entao eu verifico se a busca foi feita corretamente
Exemplos:
|     produto    |
|   "bicicleta"  |
|   "carrinho"   |
|    "pebolim"   |


@busca_incorreta
Esquema do Cenario: Preencher o campo de busca incorretamente
Quando eu faco uma busca por um <item>
Entao eu verifico se aparece a mensagem que nenhum produto foi encontrado
Exemplos:
|     item      |
|   "123456"    |
|    "////"     |
|  "efotebol"   |