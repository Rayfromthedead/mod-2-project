Rails.application.routes.draw do
  
  	get 'sessions/new'
	resources :users, :bikes, :events, :trails, :types, :ratings, :sessions, :sign_ups
	get "/signup", to: "users#new"
	get "/login", to: "sessions#new"
	post "sessions", to: "sessions#create"
	delete "sessions", to: "sesssions#destroy" 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
