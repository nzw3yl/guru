Guru::Application.routes.draw do


  scope ":locale", locale: /#{I18n.available_locales.join("|")}/, :shallow_path => ":locale" do
      authenticated :user do
        root :to => 'home#index'
      end
      
      get 'tags/:tag', to: 'home#index', as: :tag
      
      root :to => "home#index"
      devise_for :users
      resources :users
      resources :questions, :shallow => true do
        resources :attempts
      end
      resources :question_fields
      resources :question_types
      resources :tags, :only => :index 
      

  end
  
  match '*path', to: redirect {|params,req| "/#{I18n.default_locale}/#{req.fullpath}"}, constraints: lambda { |req| !req.path.starts_with? "/#{I18n.default_locale}/" }
  match '', to: redirect("/#{I18n.default_locale}")
end
