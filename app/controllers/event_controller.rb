class EventController < ApplicationController

  def index
  	@event = Event.all
  end

  def show
  	@event = Event.find(params[:id])
  end

  def new
  	@event = Event.new
  end

  def create
    @event = Event.new(title: params[:title], description: params[:description], duration: params[:duration],
    	start_date: params[:start_date], price: params[:price], user_id: current_user.id, location: params[:location])

      if @event.save
      redirect_to root_path, success: 'The event was succesfully created !'
    else
      render 'new', danger: 'Error : you need to complete this field '
      puts 'Event is invalid'
  	end

  end
  
end
