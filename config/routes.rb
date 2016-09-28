Rails.application.routes.draw do
  namespace :v1 do
    get '/employees' => 'employees#index'
    get '/employees/:id' => 'employees#show'
  end
  namespace :v2 do
    get '/employees' => 'employees#index'
    get '/employees/:id' => 'employees#show'
  end
end
