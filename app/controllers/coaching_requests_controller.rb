class CoachingRequestsController < ApplicationController
  def new
    @coaching_request = CoachingRequest.new
  end
  
  def create
    @user = User.find_or_create_by(name: params[:name], email: params[:email], phone: params[:phone])
    @coaching_request = CoachingRequest.create(
      user_id: @user.id, 
      submitted_at: DateTime.now, 
      status: :initialized,
      description: params[:description],
      coaching_type: params[:coaching_type]
      )
    redirect_to root_url, notice: 'Thanks for submitting your request. We will get back to you soon!'
  end
  
  def index
    @coaching_requests = CoachingRequest.all
  end
  
  def show
    @coaching_request = CoachingRequest.find(params[:id])
  end
end

