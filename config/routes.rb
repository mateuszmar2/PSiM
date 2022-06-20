Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get 'barrier'

  post 'reservation/create'
  patch 'reservation/update'
  get 'reservation/list'
  get 'reservation/show'
  delete 'reservation/delete'

  post 'user/create'
  patch 'user/update'
  get 'user/list'
  get 'user/show'
  delete 'user/delete'

  post 'spot/create'
  patch 'spot/update'
  get 'spot/list'
  get 'spot/show'
  delete 'spot/delete'

end
