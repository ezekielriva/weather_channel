Rails.application.routes.draw do
  root 'home#index'

  get ':place/details/:dt', to: 'home#show', as: :details
end
