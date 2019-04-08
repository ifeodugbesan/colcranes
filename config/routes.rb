Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/about", to: "pages#about"
  get "/contacts", to: "pages#contacts"
  get "/services", to: "pages#services"
  get "/products", to: "pages#products"
  get "/repuestos", to: "pages#repuestos"
  get 'download_pdf', to: "pages#download_pdf"
  get 'send_email', to: "pages#send_email"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
