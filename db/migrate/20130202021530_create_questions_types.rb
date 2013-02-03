class CreateQuestionsTypes < ActiveRecord::Migration
  def change
    create_table :questions_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
