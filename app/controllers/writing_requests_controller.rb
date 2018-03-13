class WritingRequestsController < ApplicationController
  def new
    @writing_request = WritingRequest.new
  end
  
  def create
    @user = User.find_or_create_by(name: params[:name], email: params[:email], phone: params[:phone])
    @company = Company.find_or_create_by(
      name: params[:company_name], 
      email: params[:email], 
      size: params[:company_size],
      industry: params[:industry]
    )
    @writing_request = WritingRequest.create(
      user_id: @user.id,
      company_id: @company.id,
      submitted_at: DateTime.now, 
      description: params[:description],
      writing_type: params[:writing_type]
      )
    redirect_to writing_requests_path
  end
  
  def index
    @writing_requests = WritingRequest.all
  end
  
  def show
    @writing_request = WritingRequest.find(params[:id])
  end
end

