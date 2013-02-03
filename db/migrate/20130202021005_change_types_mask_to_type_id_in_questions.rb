class ChangeTypesMaskToTypeIdInQuestions < ActiveRecord::Migration
  def up
    rename_column :questions, :types_mask, :type_id
  end

  def down
    rename_column :questions, :type_id, :types_mask
  end
end
