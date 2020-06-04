class MemosController < ApplicationController
  before_action :signin_check

  def index
  end

  def new
  end


  private

  def signin_check
    redirect_to new_user_session_path unless user_signed_in?
  end
end
