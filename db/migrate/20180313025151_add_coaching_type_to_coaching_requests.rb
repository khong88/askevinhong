class AddCoachingTypeToCoachingRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :coaching_requests, :coaching_type, :string
  end
end
