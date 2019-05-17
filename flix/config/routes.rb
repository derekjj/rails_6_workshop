Rails.application.routes.draw do
  get "events" => "events#index"
  get "movies" => "movies#index"
end
