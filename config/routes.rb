Rails.application.routes.draw do
  
  namespace :admin, :path => ComfyGallery.config.admin_route_prefix do
    namespace :gallery do
      resources :galleries do
        resources :revisions, :only => [:index, :show, :revert] do
          patch :revert, :on => :member
        end
        resources :photos do
          put :reorder, :on => :collection
          get :crop,    :on => :member
        end
      end
    end
  end unless ComfyGallery.config.admin_route_prefix.blank?

end
