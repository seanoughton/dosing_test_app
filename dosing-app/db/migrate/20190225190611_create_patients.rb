class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.integer :patient_number
      t.integer :doctor_id
      t.integer :clinic_id
      t.date :date_of_birth
      t.string :sex
      t.timestamps
    end
  end
end
