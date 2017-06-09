require 'api_constraints'

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: {format: 'json'} do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: :true) do
      match 'pistes/search-name' => 'pistes#search_name', :via => :post
      match 'pistes/search-advanced' => 'pistes#search_advanced', :via => :post
    end
  end

end
