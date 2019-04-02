Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/about", to: "pages#about"
  get "/contacts", to: "pages#contacts"
  get "/services", to: "pages#services"
  get "/products", to: "pages#products"
  get 'download_pdf', to: "pages#download_pdf"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
