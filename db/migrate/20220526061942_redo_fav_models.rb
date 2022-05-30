class RedoFavModels < ActiveRecord::Migration[7.0]
  def change
    drop_table :mat_favs
    drop_table :pose_favs
  end
end
