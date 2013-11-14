Given (/^I am on the home page$/) do 
	visit pages_path
	#visit new_user_registration_path
	#click_link "Sign up"
end

When(/^I click "(.*?)"$/) do |new|
  click_link "New"
end

Then (/^I am on the users sign up page$/) do
	visit new_user_registration_path
end
# When (/^I fill in "Email" with "manisiva19@gmail.com"$/) do
# end
And(/^I fill in email$/) do
  fill_in("user_email", :with => "manisiva19@gmail.com")
end

And(/^I fill in password$/) do
  fill_in("user_password", :with => "Secret")
end

And(/^I fill in password_confirmation$/) do
  fill_in("user_password_confirmation", :with => "Secret")
end

And(/^I press "(.*?)"$/) do |sign_up|
  click_button "Sign up"
end
