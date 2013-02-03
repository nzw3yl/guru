class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :content
      t.string :image
      t.integer :creator_id
      t.integer :types_mask, :default => 1
      t.string :code
      t.boolean :public, :default => true 

      t.timestamps
    end
    add_index :questions, :creator_id
    add_index :questions, :code,      :unique => true
  end
end
