Rails.application.routes.draw do
  root 'home#top'
  get "/about" => "home#about"

  get '/contact' => "contacts#new"
  get '/confirm' => "contacts#confirm"
  get '/edit' => "contacts#edit"
  get '/thanks!' => "contacts#thanks"

  resources :contacts,only: [:new,:create,:edit,:update] do
    
  end
end
