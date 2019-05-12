class UsersController < ApplicationController
  before_action :your_profile?, only: [:show]
  before_action :authenticate?, only: [:show]

  def index
  	@user = current_user.id
  	@event = Event.where(admin_id: params[:id])
  end

  def show
  	@user = User.find(params[:id, :email])
  end

  def authenticate?
  	redirect to root_path unless user.signed_in?
  end

  def your_profile?
  	redirect to root_path if current_user.is_admin == false && current_user =! User.find(params[:id])
  end
end
