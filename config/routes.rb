Rails.application.routes.draw do
  devise_for :players, controllers: {
    registrations: 'players/registrations'
  }
  root 'welcome#index'

  resource :mypage, only: :show
  resources :rankings, only: %i(index show new create)

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: '/letter_opener'
  end
end
