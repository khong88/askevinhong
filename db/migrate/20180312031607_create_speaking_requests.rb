class CreateSpeakingRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :speaking_requests do |t|
      t.references :user, foreign_key: true
      t.string :event_name
      t.datetime :event_date
      t.text :description

      t.timestamps
    end
  end
end
