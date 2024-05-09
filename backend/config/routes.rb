Rails.application.routes.draw do
  resources :events
  resources :calendars, only: [:index, :show, :create, :update, :destroy]
end
