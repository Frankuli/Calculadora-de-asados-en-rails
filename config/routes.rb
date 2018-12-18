Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'

  resources :events do
    resources :people
  end

  resources :articles

  resources :expenses

end
