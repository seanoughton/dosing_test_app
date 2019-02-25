class CreateBloodTests < ActiveRecord::Migration[5.2]
  def change
    create_table :blood_tests do |t|
      t.float :tsat
      t.float :ferrin
      t.date :date
      t.integer :patient_id
      t.timestamps
    end
  end
end
