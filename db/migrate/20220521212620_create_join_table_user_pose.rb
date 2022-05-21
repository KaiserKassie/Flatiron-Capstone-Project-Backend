class CreateJoinTableUserPose < ActiveRecord::Migration[7.0]
  def change
    create_join_table :users, :poses do |t|
      # t.index [:user_id, :pose_id]
      # t.index [:pose_id, :user_id]
    end
  end
end
