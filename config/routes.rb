Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  root to: "exercises#new"

  resources :exercises do
    resource :vote
  end
end
