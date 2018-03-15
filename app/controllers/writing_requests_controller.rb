class WritingRequestsController < ApplicationController
  def new
    @writing_request = WritingRequest.new
  end
  
  def create
    @user = User.find_or_initialize_by(
      name: params[:name], 
      email: params[:email], 
      phone: params[:phone]
    )
  
    @company = Company.find_or_initialize_by(
      name: params[:company_name], 
      email: params[:email], 
      size: params[:company_size],
      industry: params[:industry]
    )
    
    if @user.save && @company.save
      @writing_request = WritingRequest.new(
        user_id: @user.id,
        company_id: @company.id,
        description: params[:description],
        writing_type: params[:writing_type],
        submitted_at: DateTime.now
      )
      
      if @writing_request.save
        redirect_to root_url, notice: 'Thanks for submitting your request. We will get back to you soon!'
      else
        render :new
      end
    else
      render :new
    end
  end
  
  def index
    @writing_requests = WritingRequest.all
  end
  
  def show
    @writing_request = WritingRequest.find(params[:id])
  end
end
