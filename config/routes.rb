Rails.application.routes.draw do
  resources :emails, only: [:new, :index, :create, :show]
  get "templates" , to: "templates#new"
  post "templates" , to: "templates#create"
  post "template/select" , to: "templates#select", as: "select_template"
  delete "template/:id" , to: "templates#destroy", as: "destroy_template"
  root "emails#index"
end
