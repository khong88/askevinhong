class CreateWritingRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :writing_requests do |t|
      t.references :user
      t.references :company
      t.date :submitted_at
      t.text :description

      t.timestamps
    end
  end
end
