# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include ApplicationHelper
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  # TODO(benjibrandt): re-org controllers so this can be used before_action :authenticate_user!
  
  def profile
    if params[:search]
      @patients = Rails.cache.fetch("/user/#{params[:search]}", :expires_in => 5.minutes) do User.where('lower(name) = ?', "#{params[:search]}".downcase) end
    end

    @user = current_user
    @following_providers = @user.followers # Providers who wish to be affiliated with current patient
    @requesting_providers = [] # Providers who wish to be affiliated with current patient and aren't already
    @following_providers.each { |provider|
      if !@user.following.include?(provider)
        @requesting_providers << provider
      end
    }
  end
  
  def patient
    @user = Rails.cache.fetch("/user/#{params[:id]}", :expires_in => 5.minutes) do User.find(params[:id]) end
  end

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :allergies, :email, :vaccines, :medication, :diseases, :medical_history])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :allergies, :email, :vaccines, :medication, :diseases, :medical_history, :affiliated_providers])
  end
end
