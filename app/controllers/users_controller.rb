class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = current_user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:room).permit(:name,:email,:password,:icon))
    if @user.save
      flash[:notice]="ユーザーを新規登録しました"
      redirect_to :users
    else
      flash[:notice]="登録に失敗しました"
      render "new"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def profile
    @user = current_user
  end

  def image_for
    @user = User.find(params[:id])
    send_data(@user.image)
  end

  def user_params
    params.require(:user).permit(:name, :password, :icon) # 変更後
  end
end
