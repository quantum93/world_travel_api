Rails.application.routes.draw do
  resources :countries do
    resources :reviews 
  end
end
