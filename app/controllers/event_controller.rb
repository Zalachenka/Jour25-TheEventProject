class EventController < ApplicationController

  def index
  	@event = Event.all
  end

  def show
  	@event = Event.find(params[:id])
  end

  def create
    @user = User.create(first_name: params[:first_name], user_id: 4)
  end
  
end
