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

    # update STILL WORKING ON THIS
    patch '/items/:id' => 'items#update'
  end
end
