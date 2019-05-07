class StaticPageController < ApplicationController
	before_action :authenticate_user!, only: [:secret]
  def index
  	@event = Event.all
  end

  def show
  	@event = Event.find(params[:id])
  	if user_signed_in?
  		redirect_to root_path
  	end
  end

  def secret
  end
end
