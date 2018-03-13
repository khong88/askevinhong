class SwagRequestsController < InheritedResources::Base

  private

    def swag_request_params
      params.require(:swag_request).permit(:user_id, :quantity, :gender, :size)
    end
end

