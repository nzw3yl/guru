class AddMarksCountToUsers < ActiveRecord::Migration
  def change
    add_column :users, :marks_count, :integer
  end
end
