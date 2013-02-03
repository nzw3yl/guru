class RenameQuestionsTypes < ActiveRecord::Migration
  def change
       rename_table :questions_types, :question_types
   end
end
