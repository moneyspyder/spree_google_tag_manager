Spree::Core::Engine.routes.draw do
  
  namespace :admin do
    resource :google_tag_manger, only: [:edit, :update]
  end

end