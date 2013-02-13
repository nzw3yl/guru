### UTILITY METHODS ###

def create_question
  @question ||= { :content => "Who let the dogs out?" }
end

### GIVEN ###

Given /^I am not signed in$/ do
  set_locale
  visit("/#{@locale}/users/sign_out")
end

### WHEN ###

When /^I create a new question$/ do
  visit("/#{@locale}/questions/new")
  create_question
  fill_in "question_content", :with => @question[:content]
  click_button "Create Question"
end


When /^I answer a question$/ do
  pending # express the regexp above with the code you wish you had
end

When /^my answer is correct$/ do
  pending # express the regexp above with the code you wish you had
end

### THEN ###

Then /^I should see a new question successful message$/ do
  page.should have_content "Question was successfully created."
end

Then /^I should see my question count increase$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see a correct answer message$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should be invited to sign up$/ do
  pending # express the regexp above with the code you wish you had
end