class CreateBiodata < ActiveRecord::Migration[6.1]
  def change
    create_table :biodata do |t|
      t.string :name
      t.string :fathername
      t.string :gender
      t.string :email
      t.datetime :dateofbirth
      t.boolean :ssc
      t.boolean :inter
      t.boolean :btech

      t.timestamps
    end
  end
end
