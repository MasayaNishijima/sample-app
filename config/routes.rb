Rails.application.routes.draw do
  resources :votes
  patch 'choices/:id', to: 'choices#count_up', as: 'count_up_choice'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
