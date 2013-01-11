Hackerboard::Application.routes.draw do
  get "/", :to => "questions#index"
  get "/signup", :to => "users#new"
end
