class Question < ActiveRecord::Base
  attr_accessible :content, :image, :user_id, :question_type_id, :answers_attributes, :tag_list, :tag_tokens, :reference_url
  belongs_to :question_type
  belongs_to :user
  counter_culture :user
  has_many   :answers, class_name: "QuestionField"
  accepts_nested_attributes_for :answers, allow_destroy: true, limit: 10
  mount_uploader :image, ImageUploader
  has_many :taggings
  has_many :tags, through: :taggings
  has_many :attempts
  attr_reader :tag_tokens
  
  def tag_tokens=(tokens)
    self.tag_ids = Tag.ids_from_tokens(tokens)
  end
  
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
  
  def answer_array
    correct_answers = []
    self.answers.each do |answer|
      correct_answers << answer.id if answer.correct?
    end
     return correct_answers
  end
end
