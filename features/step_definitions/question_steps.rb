### UTILITY METHODS ###

def create_question
  @question = FactoryGirl.create(:question, user_id: @visitor[:id])
  create_tag
  create_tagging
end

def create_tag
  @tag = FactoryGirl.create(:tag)
end

def create_tagging
  @tag = FactoryGirl.create(:tagging, question: @question, tag: @tag)
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
  #click_button "btn-add-image"
  #first(:css,'#question_image', :visible => true) 
  #attach_file "question_image", @question[:image]
  #click_button "btn-new-tag"
  #first(:css,'#question_tag_tokens', :visible => true) 
  #fill_in "question_tag_tokens", :with => @tag[:name]
  click_button "btn-r-url"
  first(:css,'#question_reference_url', :visible => true) 
  fill_in "question_reference_url", :with => @question[:reference_url]
  click_link "Add Answer"
  click_button "Create Question"
end


When /^I answer a question$/ do
  pending # express the regexp above with the code you wish you had
end

When /^my answer is correct$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I visit the filtered page$/ do
  pending # express the regexp above with the code you wish you had
end

### THEN ###

Then /^I should see my question$/ do
  pending # express the regexp above with the code you wish you had
end


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