Dado('que esteja na home') do
   @home = Home.new
   @home.load
end
  
Quando('realizar uma busca por um produto existente') do
   @home.search_for('SPEAKERS')
   @search_results = SearchResults.new
end
  
Então('deverão ser retornados resultados na busca') do
  @search_results
  expect(@search_results).to have_products
end

                                                                        
                                                                           