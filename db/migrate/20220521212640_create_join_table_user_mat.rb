class CreateJoinTableUserMat < ActiveRecord::Migration[7.0]
  def change
    create_join_table :users, :mats do |t|
      # t.index [:user_id, :mat_id]
      # t.index [:mat_id, :user_id]
    end
  end
end
