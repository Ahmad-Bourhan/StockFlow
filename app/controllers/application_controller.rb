class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  protected

  # Redirect to products after login
  def after_sign_in_path_for(resource)
    products_path
  end

  # Optional: Redirect to a specific page after logout
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
end
