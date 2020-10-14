Rails.application.routes.draw do
  get 'destinations/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bloggers, :destinations, :posts
  post 'posts/:id', to: 'posts#like', as: 'like'
end
