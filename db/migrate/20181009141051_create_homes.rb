class CreateHomes < ActiveRecord::Migration[5.2]
  def change
    create_table :homes do |t|
      t.string :index
      t.string :Name
      t.integer :Aadhar
      t.integer :Dob
      t.string :Father
      t.string :Mother
      t.string :Children

      t.timestamps
    end
  end
end
