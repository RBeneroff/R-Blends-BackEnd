Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:create, :show, :destroy, :index, :update] do
    resources :color_schemes, only: [:create, :destroy, :index, :update, :show]  do
    end
    collection do
      post '/login', to: 'users#login'
      delete '/:user_id/color_schemes', to: 'color_schemes#destroy_all'

    end


  end

  get 'color_schemes/all_color_schemes', to: 'color_schemes#all_color_schemes'
  #resources :all_color_schemes, only: [:create, :destroy, :index, :show]

end

# Prefix Verb   URI Pattern                                 Controller#Action
# color_schemes_all_color_schemes GET    /color_schemes/all_color_schemes(.:format)  color_schemes#all_color_schemes
# user_color_schemes GET    /users/:user_id/color_schemes(.:format)     color_schemes#index
#        POST   /users/:user_id/color_schemes(.:format)     color_schemes#create
# user_color_scheme GET    /users/:user_id/color_schemes/:id(.:format) color_schemes#show
#        PATCH  /users/:user_id/color_schemes/:id(.:format) color_schemes#update
#        PUT    /users/:user_id/color_schemes/:id(.:format) color_schemes#update
#        DELETE /users/:user_id/color_schemes/:id(.:format) color_schemes#destroy
# login_users POST   /users/login(.:format)                      users#login
#        DELETE /users/:user_id/color_schemes(.:format)     color_schemes#destroy_all
#  users GET    /users(.:format)                            users#index
#        POST   /users(.:format)                            users#create
#   user GET    /users/:id(.:format)                        users#show
#        PATCH  /users/:id(.:format)                        users#update
#        PUT    /users/:id(.:format)                        users#update
#        DELETE /users/:id(.:format)                        users#destroy
