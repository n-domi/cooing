Rails.application.routes.draw do
  root 'home#top'
  get "/about" => "home#about"

  get '/contact' => "contacts#new"
  get '/confirm' => "contacts#confirm"
  get '/edit' => "contacts#edit"

  resources :contacts,only: [:new,:create,:edit,:update] do
    
  end
end
