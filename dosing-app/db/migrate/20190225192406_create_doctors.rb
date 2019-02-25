class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.integer :badge_number
      t.integer :clinic_id
      t.timestamps
    end
  end
end
