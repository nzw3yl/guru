# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    content "MyString"
    image "MyString"
    creator_id 1
    types_mask 1
  end
end
