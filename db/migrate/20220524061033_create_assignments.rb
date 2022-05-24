class CreateAssignments < ActiveRecord::Migration[7.0]
  def change
    create_table :matassignments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :mat, null: false, foreign_key: true

      t.timestamps
    end
    create_table :poseassignments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :pose, null: false, foreign_key: true

      t.timestamps
    end
  end
end
