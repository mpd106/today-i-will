class UsersController < ApplicationController
  respond_to :json
  before_filter :fetch_user, :except => [:index, :create]

  def fetch_user
    @user = User.find_by_username params[:id]
  end

  def index
    @users = User.all
    respond_with @users
  end

  def create
    respond_with User.create params[:user]
  end

  def show
    respond_with @user
  end

  def update
    respond_with @user.update_attributes params[:user]
  end

  def destroy
    respond_with @user.destroy
  end
end
