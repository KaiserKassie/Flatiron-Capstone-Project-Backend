class CreateMatFavs < ActiveRecord::Migration[7.0]
  def change
    create_table :mat_favs do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :mat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
