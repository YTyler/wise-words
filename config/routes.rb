Rails.application.routes.draw do
  resources :authors do
    resources :quotes
  end
end
