class SpeakingRequestsController < ApplicationController
  def new
    @speaking_request = SpeakingRequest.new
  end
  
  def create
    @user = User.find_or_initialize_by(
      name: params[:name], 
      email: params[:email], 
      phone: params[:phone]
    )
    
    if @user.save
      @speaking_request = SpeakingRequest.new(
        user_id: @user.id, 
        event_date: params[:event_date], 
        event_name: params[:event_name],
        description: params[:description]
      )
      
      if @speaking_request.save
        redirect_to root_url, notice: 'Thanks for submitting your request. We will get back to you soon!'
      else
        render :new
      end
    else
      render :new
    end
  end
  
  def index
    @speaking_requests = SpeakingRequest.all
  end
  
  def show
    @speaking_request = SpeakingRequest.find(params[:id])
  end
end

