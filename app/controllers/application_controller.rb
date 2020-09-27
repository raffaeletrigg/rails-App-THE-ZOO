class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  # Read about the SANITIZER and the CONFIGURE PERMITTED PARAMS here: https://www.rubydoc.info/github/plataformatec/devise/Devise/ParameterSanitizer


  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :user_name, :age, :gender])
    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :user_name, :age, :gender])


    # Read about the SANITIZER and the CONFIGURE PERMITTED PARAMS here: https://www.rubydoc.info/github/plataformatec/devise/Devise/ParameterSanitizer
  end
end
