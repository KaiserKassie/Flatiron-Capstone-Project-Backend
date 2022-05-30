class CreatePoseFavs < ActiveRecord::Migration[7.0]
  def change
    create_table :pose_favs do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :pose, null: false, foreign_key: true

      t.timestamps
    end
  end
end
