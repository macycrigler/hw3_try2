Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources "entries"
  resources "places"
  # Defines the root path route ("/")
  get("/", { :controller => "places", :action => "index" })
end
