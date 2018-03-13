class CreateSwagRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :swag_requests do |t|
      t.references :user
      t.integer :quantity
      t.string :gender
      t.string :size

      t.timestamps
    end
  end
end
