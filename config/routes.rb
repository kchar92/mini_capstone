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

    get '/suppliers' => 'suppliers#index'

    get '/suppliers/:id' => 'suppliers#show'

    post '/suppliers' => 'suppliers#create'

    patch '/suppliers/:id' => 'suppliers#update'

    delete '/suppliers/:id' => 'suppliers#destroy'
  end
end
