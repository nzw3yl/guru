# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    content "Who is the boss?"
    image "http://m.c.lnkd.licdn.com/mpr/mpr/shrink_200_200/p/4/000/149/2e5/0a7b044.jpg"
    user_id 1
    question_type_id 1
    reference_url "http://www.wikipedia.org"
    code "XXX"
  end

end
