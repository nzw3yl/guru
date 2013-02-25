# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :attempt do
    answer "MyString"
    question_id 1
    user_id 1
    final false
    score 1
  end
end
