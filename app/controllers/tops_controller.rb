class TopsController < ApplicationController
  def index
  end

  def create
    message = Model.new(message_params)
    if message.save
      redirect_to root_path
    else
      render :index
    end
  end




  private

  def message_params
    params.permit(:name, :title, :message)
  end
end
