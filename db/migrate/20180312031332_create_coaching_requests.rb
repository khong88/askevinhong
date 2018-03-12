class CreateCoachingRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :coaching_requests do |t|
      t.references :user, foreign_key: true
      t.datetime :submitted_at
      t.text :description
      t.string :status

      t.timestamps
    end
  end
end
