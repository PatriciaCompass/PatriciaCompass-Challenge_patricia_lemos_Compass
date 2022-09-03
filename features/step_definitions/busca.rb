Dado('que esteja na home') do
   @home_page = Home.new
   @home_page.load
   binding.pry
end
  
Quando('realizar uma busca por um produto existente') do
   @home.search_for('Speakers')
   @search_results_page = SearchResults.new
   binding.pry
end
  
Então('deverão ser retornados resultados na busca') do
  expect(@search_results_page).to have_products
end

                                                                        
                                                                           