# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  def home; end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :allergies, :email, :vaccines, :medication, :diseases, :medical_history])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :allergies, :email, :vaccines, :medication, :diseases, :medical_history, :affiliated_providers])
  end
end
