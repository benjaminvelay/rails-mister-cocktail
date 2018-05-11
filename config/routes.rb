Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "pages#home"
    resources :doses, only: [:new, :create, :destroy]
    resources :reviews, only: [:new, :create]
  end

  root 'cocktails#index'
end

