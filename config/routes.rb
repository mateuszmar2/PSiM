Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

#  get 'barrier'

  post 'reservation/create', to: 'reservation#create'
  patch 'reservation/update', to: 'reservation#update'
  get 'reservation/list', to: 'reservation#list'
  get 'reservation/show', to: 'reservation#show'
  delete 'reservation/delete', to: 'reservation#destroy'

  post 'user/create', to: 'user#create'
  patch 'user/update', to: 'user#update'
  get 'user/list', to: 'user#list'
  get 'user/show', to: 'user#show'
  delete 'user/delete', to: 'user#destroy'

  post 'spot/create', to: 'spot#create'
  patch 'spot/update', to: 'spot#update'
  get 'spot/list', to: 'spot#list'
  get 'spot/show', to: 'spot#show'
  delete 'spot/delete', to: 'spot#destroy'

end
