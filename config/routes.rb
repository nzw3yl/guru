Guru::Application.routes.draw do

  scope ":locale", locale: /#{I18n.available_locales.join("|")}/, :shallow_path => ":locale" do
      authenticated :user do
        root :to => 'home#index'
      end
      root :to => "home#index"
      devise_for :users
      resources :users
      resources :questions
      resources :question_types
  end
  match '*path', to: redirect("/#{I18n.default_locale}/%{path}"), constraints: lambda { |req| !req.path.starts_with? "/#{I18n.default_locale}/" }
  match '', to: redirect("/#{I18n.default_locale}")
end