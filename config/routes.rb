Rails.application.routes.draw do
  root to: redirect("/remedies")
  resources :remedies
end
