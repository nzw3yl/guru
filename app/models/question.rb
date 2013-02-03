class Question < ActiveRecord::Base
  attr_accessible :content, :image, :creator_id, :question_type_id
  belongs_to :question_type
  belongs_to :users

end
