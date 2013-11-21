Given (/^I am a logged in user$/) do
	visit new_user_session_path
	fill_in "user_email", :with => "test@test.com"
	fill_in "user_password", :with => "testtest"
	click_button "Sign in"
	visit pages_path
end

And(/^page should have content"(.*?)"$/) do |notice|
  page.should have_content :notice
end

When(/^I click "(.*?)"$/) do |create|
  click_link"Create a Tournament"
end

