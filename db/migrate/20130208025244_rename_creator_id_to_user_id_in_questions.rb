class RenameCreatorIdToUserIdInQuestions < ActiveRecord::Migration
  def up
     rename_column :questions, :creator_id, :user_id
  end

  def down
     rename_column :questions, :user_id, :creator_id
  end
end
