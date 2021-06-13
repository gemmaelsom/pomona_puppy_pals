class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    include Pundit

    before_action :configure_permitted_parameters, if: :devise_controller?
    def configure_permitted_parameters
      # For additional fields in app/views/devise/registrations/new.html.erb
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :bio, :photo, :country, :post_code, :street_name, :city, :state, :birthday, :phone_number, :display_name])
      # For additional in app/views/devise/registrations/edit.html.erb
      devise_parameter_sanitizer.permit(:account_update, keys: [:username])
    end
end