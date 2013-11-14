#sign_up.feature
Feature: Sign up
As an unauthorized user
I want to signup with my details
So that I can login
  
Scenario: Password doesn't match confirmation
  Given I am on the home page
  When I fill in "Email" with "manisiva19@gmail.com"
  And I fill in "Password" with "Secret"
  And I fill in "Password confirmation" with "Password"
  And I press "Sign Up"
  Then the Sign up form should be shown again
  And I should see "Password doesn't match confirmation"
  And I should not be registered