Rails.application.routes.draw do
  root to: 'categories#index', as: 'categories'
  get '/categories/:id', to: 'categories#show', as: 'category'
  
end
