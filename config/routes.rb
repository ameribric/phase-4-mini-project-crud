Rails.application.routes.draw do
# resources :spices
  resources :spices, only: [:create, :index, :update, :destroy]
  # The line above this one has all the CRUD routes therefore we can take out the only: part and all the stuff after it to make our code DRY

end
