class SwagRequestsController < ApplicationController
  def new
    @swag_request = SwagRequest.new
  end
  
  def create
    @user = User.find_or_create_by(
      name: params[:name], 
      email: params[:email], 
      phone: params[:phone],
      address: params[:address]
    )
    @swag_request = SwagRequest.create(
      user_id: @user.id,
      description: params[:description],
      size: params[:size],
      item: params[:item],
      gender: params[:gender],
      quantity: params[:quantity]
    )
    redirect_to root_url, notice: 'Thanks for submitting your request. We will get back to you soon!'
  end
  
  def index
    @swag_requests = SwagRequest.all
  end
  
  def show
    @swag_request = SwagRequest.find(params[:id])
  end
end

