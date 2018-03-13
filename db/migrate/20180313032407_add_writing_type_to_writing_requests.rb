class AddWritingTypeToWritingRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :writing_requests, :writing_type, :string
  end
end
