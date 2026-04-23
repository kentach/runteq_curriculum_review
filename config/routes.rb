Rails.application.routes.draw do
  root 'static_pages#top'

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  resources :boards, only: %i[index new create show]

end