class AddColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :questions_count, :integer, :null => false, :default => 0
  end
end
