Rails.application.routes.draw do
  post "/users" => "users#create"
  post "/walls" => "walls#create"
  get "/walls" => "walls#index"
end
