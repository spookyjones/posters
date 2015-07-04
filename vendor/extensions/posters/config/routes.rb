Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :posters do
    resources :posters, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :posters, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :posters, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
