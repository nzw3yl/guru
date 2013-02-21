class AddAnswersCountToUsers < ActiveRecord::Migration
  def change
    add_column :users, :answers_count, :integer
  end
end
