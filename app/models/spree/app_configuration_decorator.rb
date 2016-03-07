module Spree
  AppConfiguration.class_eval do
    preference :google_container_id, :string, default: nil
  end
end
