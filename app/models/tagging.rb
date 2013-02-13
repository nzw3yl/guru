class Tagging < ActiveRecord::Base
  belongs_to :tag
  belongs_to :question
  # attr_accessible :title, :body
end
