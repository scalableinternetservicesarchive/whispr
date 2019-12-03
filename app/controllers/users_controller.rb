class UsersController < ApplicationController
  def following
    @title = "Following"
    @user  = Rails.cache.fetch("/user/#{params[:id]}", :expires_in => 5.minutes) do User.find(params[:id]) end
    @users = @user.following
    render 'show_follow'
  end

  def followers
    @title = "Your Patients"
    @user  = Rails.cache.fetch("/user/#{params[:id]}", :expires_in => 5.minutes) do User.find(params[:id]) end
    @users = @user.followers
    render 'show_patients'
  end

  private

end