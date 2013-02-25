class AddAttemptCountToUsers < ActiveRecord::Migration
  def change
    add_column :users, :attempt_count, :integer, :null => false, :default => 0
  end
end
