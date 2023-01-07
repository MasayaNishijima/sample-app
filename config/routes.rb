Rails.application.routes.draw do
  resources :votes
  resources :choices do
    patch "count_up", on: :member
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
