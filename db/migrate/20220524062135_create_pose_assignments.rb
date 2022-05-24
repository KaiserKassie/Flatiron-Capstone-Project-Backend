class CreatePoseAssignments < ActiveRecord::Migration[7.0]
  def change
    create_table :pose_assignments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :pose, null: false, foreign_key: true

      t.timestamps
    end
  end
end
