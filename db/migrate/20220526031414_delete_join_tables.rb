class DeleteJoinTables < ActiveRecord::Migration[7.0]
  def change
    drop_table :matassignments
    drop_table :poseassignments
  end
end
