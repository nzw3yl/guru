class CreateQuestionFields < ActiveRecord::Migration
  def change
    create_table :question_fields do |t|
      t.string :answer
      t.integer :question_id
      t.boolean :correct

      t.timestamps
    end
  end
end
