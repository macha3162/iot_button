Rails.application.routes.draw do
  root 'rooms#index'
  resources :rooms do
    get 'push'
  end
end
