class SpeakingRequestsController < ApplicationController
  def new
    @speaking_request = SpeakingRequest.new
  end
  
  def create
    @user = User.find_or_create_by(name: params[:name], email: params[:email], phone: params[:phone])
    @speaking_request = SpeakingRequest.create(
      user_id: @user.id, 
      event_date: params[:event_date], 
      event_name: params[:event_name],
      description: params[:description]
      )
    redirect_to speaking_requests_path
  end
  
  def index
    @speaking_requests = SpeakingRequest.all
  end
  
  def show
    @speaking_request = SpeakingRequest.find(params[:id])
  end
end

