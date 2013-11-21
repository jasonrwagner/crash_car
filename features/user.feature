#sign_up.feature
Feature: Sign up
As an unauthorized user
I want to signup with my details
So that I can login
  
Scenario: Sucessful Sign Up
  Given I am on the home page
  When I click "New"
  Then I am on the users sign up page
  When I fill in email
  And I fill in password
  And I fill in password_confirmation
  And I press "Sign Up"
  Then page should have content "Welcome! You have signed up successfully."

Scenario:  Unsuccessful Sign Up
  Given I am on the home page
  When I click "New"
  Then I am on the users sign up page
  When I fill in email
  And I fill in password
  And I fill in password_confirmation
  And I press "Sign Up"
  Then page should have content "Error"
