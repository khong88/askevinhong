class AdvisorRequestsController < ApplicationController
  def new
    @advisor_request = AdvisorRequest.new
  end
  
  def create
    @user = User.find_or_create_by(
      name: params[:name], 
      email: params[:email], 
      phone: params[:phone]
    )
    @company = Company.find_or_create_by(
      name: params[:company_name], 
      email: params[:email], 
      size: params[:company_size],
      industry: params[:industry]
    )
    @advisor_request = AdvisorRequest.create(
      user_id: @user.id,
      company_id: @company.id,
      description: params[:description],
      advising_type: params[:advisor_type]
    )
    
    redirect_to advisor_requests_path
  end
  
  def index
    @advisor_requests = AdvisorRequest.all
  end
  
  def show
    @advisor_request = AdvisorRequest.find(params[:id])
  end
end

