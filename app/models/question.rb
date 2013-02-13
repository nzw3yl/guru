class Question < ActiveRecord::Base
  attr_accessible :content, :image, :user_id, :question_type_id, :answers_attributes, :tag_list
  belongs_to :question_type
  belongs_to :user
  counter_culture :user
  has_many   :answers, class_name: "QuestionField"
  accepts_nested_attributes_for :answers, allow_destroy: true, limit: 10
  mount_uploader :image, ImageUploader
  has_many :taggings
  has_many :tags, through: :taggings
  
  def self.tagged_with(name)
    Tag.find_by_name!(name).questions
  end
  
  def self.tag_counts
    Tag.select("tags.*, count(taggings.tag_id) as count").
      joins(:taggings).group("taggings.tag_id")
  end
  
  def tag_list
    tags.map(&:name).join(", ")
  end  
  
  def tag_list=(names)
    self.tags = names.split(",").map do |n|
      Tag.where(name: n.strip).first_or_create!
    end
  end
end
