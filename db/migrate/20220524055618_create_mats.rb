class CreateMats < ActiveRecord::Migration[7.0]
  def change
    create_table :mats do |t|
      t.string :brand
      t.string :name
      t.float :weight
      t.integer :length1
      t.integer :length2
      t.integer :length3
      t.integer :width1
      t.integer :width2
      t.float :thickness
      t.string :material
      t.string :image
      t.string :link

      t.timestamps
    end
  end
end
