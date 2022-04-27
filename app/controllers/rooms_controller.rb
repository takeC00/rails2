class RoomsController < ApplicationController
  
  def index
    @rooms = Room.all
  end

  def new
    @room =Room.new
  end

  def create
    @room = Room.new(params.require(:room).permit(:name,:introduction,:price,:adress,:avatar))
    if @room.save
      flash[:notice]="ルームを新規登録しました"
      redirect_to :rooms
    else
      flash[:notice]="登録に失敗しました"
      render "new"
    end
  end

  def show
    @room = Room.find(params[:id])
  end

  def image_for
    @room = Room.find(params[:id])
    send_data(@room.image)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
