Rails.application.routes.draw do
  devise_for :users
  resources :pics do
    member do
      put 'like', to: 'pic#upvote'
    end
  end

  root 'pics#index'
end
