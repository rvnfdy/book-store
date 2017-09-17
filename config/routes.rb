Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/books', to: 'books#index'
  get '/book/:id', to: 'books#show'
  get '/books/new', to: 'books#new'
  post '/books', to: 'books#create'
end
