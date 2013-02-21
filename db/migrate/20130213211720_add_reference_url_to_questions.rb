class AddReferenceUrlToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :reference_url, :string
  end
end
