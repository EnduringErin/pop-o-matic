Rails.application.routes.draw do
  root 'competencies#index'

  resources :competencies

  get 'competencies/index'
end
