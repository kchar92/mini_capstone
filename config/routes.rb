Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    # index
    get '/items' => 'items#index'

    # show
    get '/items/:id' => 'items#show'

    # create
    post '/items' => 'items#create'

    # update
    patch '/items/:id' => 'items#update'

    # destroy
    delete '/items/:id' => 'items#destroy'

    #suppliers

    get '/suppliers' => 'suppliers#index'

    get '/suppliers/:id' => 'suppliers#show'

    post '/suppliers' => 'suppliers#create'

    patch '/suppliers/:id' => 'suppliers#update'

    delete '/suppliers/:id' => 'suppliers#destroy'

    # authentication

    post '/users' => 'users#create'

    post '/sessions' => 'sessions#create'

    #orders

    post '/orders' => 'orders#create'

    get '/orders' => 'orders#index'

    # carted items

    get 'carted_items' => 'carted_items#index'

    post 'carted_items' => 'carted_items#create'


  end
  get "/items" => "items#index"
  get "/items/new" => "items#new"
  post "/items" => "items#create"
  get "/items/:id" => "items#show"
  get "/items/:id/edit" => "items#edit"
  patch "items/:id" => "items#update"
end
