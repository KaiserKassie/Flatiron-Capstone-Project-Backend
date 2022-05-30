class DeleteExtraPoseTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :pose_assignments
  end
end
