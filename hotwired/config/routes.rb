Rails.application.routes.draw do
  resources :library_books
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
  root "library_books#index"

  get '/simple_form' => 'library_books#simple_form'
end
