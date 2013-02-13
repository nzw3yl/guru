# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question_field do
    answer "MyString"
    question_id 1
    correct false
  end
end
