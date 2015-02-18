Rails.application.routes.draw do
  resources :exercices
  root 'exercices#new'
end
