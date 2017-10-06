Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }

  root 'pages#home'

  get "products" =>  "pages#products", as: :products

  get "theScience" =>  "pages#theScience", as: :theScience

  get "aboutus" =>  "pages#aboutus", as: :aboutus

  get "projects" =>  "pages#projects", as: :projects

  get "journals" =>  "pages#journals", as: :journals

  get "home" =>  "pages#home", as: :home

  get "FAQ" =>  "pages#faq", as: :faq

  get "Messages"=> "messages#index", as: :index

  get "Chat"=> "messages#new", as: :new

  resources :messages, only: [:index, :new, :create]
end
