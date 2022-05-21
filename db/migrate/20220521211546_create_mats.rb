class CreateMats < ActiveRecord::Migration[7.0]
  def change
    create_table :mats do |t|
      t.string :brand
      t.string :name
      t.integer :weight
      t.integer :thickness
      t.string :material

      t.timestamps
    end
  end
end
