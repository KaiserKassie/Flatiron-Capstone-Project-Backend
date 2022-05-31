class AddUniqueIndexForPoseFavs < ActiveRecord::Migration[7.0]
  def change
    add_index :pose_favs, [:user_id, :pose_id], unique: true
  end
end
