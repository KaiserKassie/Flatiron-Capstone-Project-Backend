class CreatePoses < ActiveRecord::Migration[7.0]
  def change
    create_table :poses do |t|
      t.string :name
      t.string :description
      t.string :image
      t.string :target_body_area
      t.boolean :seated

      t.timestamps
    end
  end
end
