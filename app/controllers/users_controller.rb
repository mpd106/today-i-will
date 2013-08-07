class UsersController < ApplicationController
  respond_to :json

  def index
    @users = User.all
    respond_with @users
  end

  def create
    respond_with User.create params[:user]
  end

  def show
    respond_with User.find_by name: params[:id]
  end

  def update
  end

  def destroy
  end
end
