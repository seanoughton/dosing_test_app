class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :patient_id
      t.integer :doctor_id
      t.integer :clinic_id
      t.date :date_of_birth
      t.string :sex
      t.timestamps
    end
  end
end
