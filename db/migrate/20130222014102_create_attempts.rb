class CreateAttempts < ActiveRecord::Migration
  def change
    create_table :attempts do |t|
      t.string  :answer
      t.integer :question_id
      t.integer :user_id
      t.boolean :final, :default => false
      t.string  :test_code
      t.integer :score, :default => 0

      t.timestamps
    end
    add_index :attempts, :question_id
    add_index :attempts, [:question_id, :user_id]
    add_index :attempts, [:user_id, :test_code]
  end
end
