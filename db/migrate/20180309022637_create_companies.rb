class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :email
      t.integer :size
      t.string :industry

      t.timestamps
    end
  end
end
