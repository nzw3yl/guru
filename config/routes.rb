Guru::Application.routes.draw do

  resources :question_fields


  scope ":locale", locale: /#{I18n.available_locales.join("|")}/, :shallow_path => ":locale" do
      authenticated :user do
        root :to => 'home#index'
      end
      
      get 'tags/:tag', to: 'home#index', as: :tag
      
      root :to => "home#index"
      devise_for :users
      resources :users
      resources :questions
      resources :question_types
      

  end
  match '*path', to: redirect("/#{I18n.default_locale}/%{path}"), constraints: lambda { |req| !req.path.starts_with? "/#{I18n.default_locale}/" }
  match '', to: redirect("/#{I18n.default_locale}")
end