class AddEventsColumns < ActiveRecord::Migration[7.0]
  def change
    add_reference :events, :user, index: true
    add_column :events, :title, :string
    add_column :events, :start, :string
    add_column :events, :end, :string
  end
end
