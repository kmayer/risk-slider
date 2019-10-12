Rails.application.routes.draw do
  root to: "exercises#new"

  resources :exercises do
    resource :vote
  end
end
