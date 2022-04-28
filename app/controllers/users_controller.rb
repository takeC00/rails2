class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = User.all
  end

  def show
    @user = current_user
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def profile
  end
end
