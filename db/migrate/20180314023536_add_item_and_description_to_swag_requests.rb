class AddItemAndDescriptionToSwagRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :swag_requests, :item, :string
    add_column :swag_requests, :description, :text
  end
end
