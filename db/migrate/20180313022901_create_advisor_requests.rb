class CreateAdvisorRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :advisor_requests do |t|
      t.references :user
      t.references :company
      t.date :submitted_at
      t.text :description
      t.string :industry
      t.string :status

      t.timestamps
    end
  end
end
