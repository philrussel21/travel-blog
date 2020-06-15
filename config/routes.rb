Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'blogs#index'
  resources :blogs do 
    resources :comments, :except => [:index]
  end
end
