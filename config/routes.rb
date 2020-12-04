Rails.application.routes.draw do

  resources :users do
    resources :subjects do
      resources :grades
    end
  end

end