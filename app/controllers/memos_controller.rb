class MemosController < ApplicationController
  before_action :signin_check

  def index
  end

  def new
    @memo = Memo.new
  end

  def create
    @memo = Memo.new(memo_params)
    if @memo.save
      redirect_to memos_path
    else
      render :new
    end
  end


  private

  def signin_check
    redirect_to new_user_session_path unless user_signed_in?
  end

  def memo_params
    params.require(:memo).permit(:title, :text, :public, :price).merge(user_id: current_user.id)
  end
end
