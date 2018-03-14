class AddAdvisingTypeToAdvisorRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :advisor_requests, :advising_type, :string
  end
end
