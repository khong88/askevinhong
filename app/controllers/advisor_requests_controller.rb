class AdvisorRequestsController < InheritedResources::Base

  private

    def advisor_request_params
      params.require(:advisor_request).permit(:user_id, :company_id, :submitted_at, :description, :industry, :status)
    end
end

