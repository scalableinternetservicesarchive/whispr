# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  include RegistrationHelper
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:medical, :update]
  # prepend_before_filter :authenticate_scope!, :only => [:edit,:medical]
  # GET /resource/sign_up
  # def new
   
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   render :edit
  # end

  def medical
    @user = current_user
    if @user
      render :medical
    else
      render file: 'public/404', status: 404, formats: [:html]
    end 
  end

  def providers
    @users = User.all.limit(5) # Just keep the first 5 results
    @user = current_user

    # Respond to search bar request
    if params[:search]
      @providers = User.where('lower(name) = ?', "#{params[:search]}".downcase)
    end

    if @user
      render :providers
    else
      render file: 'public/404', status: 404, formats: [:html]
    end 
  end

  # PUT /resource
  # def update
  #   profile_path
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:is_healthcare_provider])
  end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:affiliated_proviers, :email, :password, :name])
    # update_path
  end

  # The path used after sign up.
  def after_sign_up_path_for(_resource)
    if ! _resource.is_healthcare_provider
      medical_path
    else
      profile_path
    end
  end

  def after_update_path_for(resource)
    profile_path
  end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end

  # private

  # def user_params
  #   params.require(:user).permit(:allergies, :vaccines, :medication,
  #                                :diseases, :medical_history, affiliated_proviers)
  # end
end