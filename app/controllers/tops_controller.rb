class TopsController < ApplicationController

  def index
    @message = Model.new
  end

  def create
    @message = Model.new(message_params)
    if @message.save
      respond_to do |format|
        format.json
      end
    else
      render :index
    end
  end

  def show
    render "tops/#{params[:name]}"
  end

  def check
    @message = Model.all
  end



  private

  def message_params
    params.permit(:name, :title, :message)
  end

end
