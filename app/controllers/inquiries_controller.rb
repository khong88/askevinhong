class InquiriesController < InheritedResources::Base

  private

    def inquiry_params
      params.require(:inquiry).permit(:description, :user_id)
    end
end

