class ApplicationController < ActionController::Base

  # include Pundit to handle user permissions
  include Pundit

  # Require that users log in before navigating to any screen except the sign in screen.
  before_action :authenticate_user!

  # Check that user is authorized to perform an action before it's committed.
  after_action :verify_authorized

  rescue_from Pundit::NotAuthorizedError do |exception|
  	redirect_to user_session_path, alert: exception.message
  end

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
