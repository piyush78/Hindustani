Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#index'
  get 'index' => 'homes#index'
  get '/details' => 'homes#show'
  get '/father' => 'homes#father_details'
  get '/mother' => 'homes#mother_details'
  get '/children' => 'homes#children_details'
end
