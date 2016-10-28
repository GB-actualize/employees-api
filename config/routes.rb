Rails.application.routes.draw do
  get '/employees' => 'employees#index'

  namespace :api do
    namespace :v1 do
      get '/employees' => 'employees#index'
      post '/employees/:id' => 'employees#create'
      get '/employees/:id' => 'employees#show'
      
    end
    namespace :v2 do
      get '/employees' => 'employees#index'
      get '/employees/:id' => 'employees#show'
    end
  end
end
