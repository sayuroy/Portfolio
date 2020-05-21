class TopsController < ApplicationController
  before_action :user_check, only: :check

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

  def check
    @message = Model.all
  end



  private

  def message_params
    params.permit(:name, :title, :message)
  end

  def user_check
    authenticate_or_request_with_http_basic do |username, password|
      username == Rails.application.credentials[:admin_check][:user] &&
      password == Rails.application.credentials[:admin_check][:pass]
    end
  end
end
