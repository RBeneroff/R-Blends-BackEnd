Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:create, :show, :destroy, :index, :update] do
    resources :color_schemes, only: [:create, :destroy, :index, :update, :show]
    collection do
      post '/login', to: 'users#login'
    end
  end


end
