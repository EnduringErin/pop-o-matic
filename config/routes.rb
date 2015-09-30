Rails.application.routes.draw do
  root 'competencies#index'

  resources :competencies

end
