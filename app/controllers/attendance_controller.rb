class AttendanceController < ApplicationController
  def index
    @event = Event.find(params[:event_id])
    @attendance = Attendance.where(event_id: params[:event_id])

  end

  def show

  end

  def new
   @amount = Event.find(params[:event_id]).price
    if @amount == 0
    @attendance = Attendance.create(stripe_customer_id: stripe_customer_id.sample, participant_id: current_user.id, event_id: params[:event_id])
    redirect_to root_path
    end
  end

  def create
    @attendance = Attendance.new

  end
  def update
  end

  def destroy
  end
end
