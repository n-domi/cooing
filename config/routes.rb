Rails.application.routes.draw do
  root 'home#top'
  get "/about" => "home#about"

  get '/contact' => "contacts#new"
  post "/submit" => "contacts#create"
  get '/confirm' => "contacts#confirm"
  get '/check' => "contacts#check"
  get '/edit' => "contacts#edit"

  resources :contacts,only: [:new,:create,:edit,:update] do
    member do
      get 'submit'
      get 'confirm'
    end
  end
end
