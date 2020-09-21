Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1, defaults: { format: :json } do
      devise_scope :user do
        post "sign_up", to: "users#create"
      end
    end
  end
end
