class FixAttemptsCountName < ActiveRecord::Migration
  def up
    rename_column :users, :attempt_count, :attempts_count
  end

  def down
    rename_column :users, :attempts_count, :attempt_count
  end
end
