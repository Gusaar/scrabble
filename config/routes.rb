Rails.application.routes.draw do
  resources :scores, path: :score_word,
                     only: [ :show ],
                     param: :word,
                     defaults: { format: :json }
end
