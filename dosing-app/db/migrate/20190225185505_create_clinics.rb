class CreateClinics < ActiveRecord::Migration[5.2]
  def change
    create_table :clinics do |t|
      t.string :name
      t.integer :clinic_number
      t.string :location
      t.timestamps
    end
  end
end
