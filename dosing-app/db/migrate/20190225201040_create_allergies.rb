class CreateAllergies < ActiveRecord::Migration[5.2]
  def change
    create_table :allergies do |t|
      t.string :name
      t.string :reaction

      t.timestamps
    end
  end
end
