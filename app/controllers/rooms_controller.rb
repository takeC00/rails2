class RoomsController < ApplicationController

  def index
    @rooms = Room.all
  end

  def new
    @room =Room.new
    binding.pry
  end

  def create
    
    @room = Room.new(params.require(:room).permit(:name,:introduction,:price,:adress,:avatar))
    binding.pry
    if @room.save!
      flash[:notice]="ルームを新規登録しました"
      redirect_to :rooms
    else
      binding.pry
      flash[:notice]="登録に失敗しました"
      render "new"
    end
  end

  def show
    @room = Room.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
    @room = Room.find(params[:id])
    @room.destroy
    flash[:notice] = "削除しました"
    redirect_to :rooms
  end

  def image_for
    @room = Room.find(params[:id])
    send_data(@room.image)
  end

  def set_q
    @q = Room.ransack(params[:q])
  end
  
  def search
    @results = @q.result
  end
end
