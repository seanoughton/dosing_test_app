class CreateBloodTests < ActiveRecord::Migration[5.2]
  def change
    create_table :blood_tests do |t|
      t.string :name

      t.timestamps
    end
  end
end
