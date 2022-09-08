#language: pt

Funcionalidade: Busca
  COMO um usuário do Ecommerce AdvantageOnlineShopping
  QUERO poder buscar por diferentes produtos
  PARA poder personalizar minhas compras

  Contexto: Estar na home
    Dado que esteja na home
    
  @search_for_product 
  Cenário: Buscar produto 
    Quando realizar uma busca por um produto existente 
    Então deverão ser retornados resultados na busca 

  @search_for_different_products
  Esquema do Cenário: Buscar por diferentes produtos
    Quando buscar pelo produto "<produto>"
    Então deverão ser retornados resultados na busca

    Exemplos:
    |    produto  |
    | Speakers    |
    | Tablets     |
    | Laptops     |
    | Mice        |
    | Headphones  |
