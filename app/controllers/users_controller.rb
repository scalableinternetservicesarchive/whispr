class UsersController < ApplicationController
  def following
    @title = "Following"
    @user  = User.find(params[:id])
    @users = @user.following
    render 'show_follow'
  end

  def followers
    @title = "Your Patients"
    @user  = User.find(params[:id])
    @users = @user.followers
    render 'show_patients'
  end

  private

end