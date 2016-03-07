class Spree::Admin::GoogleTagMangersController < Spree::Admin::BaseController

  def edit    
  end

  def update
    params.each do |name, value|
      next unless Spree::Config.has_preference? name
      Spree::Config[name] = value
    end
    flash[:success] = Spree.t(:successfully_updated, resource: 'Google Tag Manager Settings')    
    redirect_to edit_admin_google_tag_manger_url
  end
  
end
