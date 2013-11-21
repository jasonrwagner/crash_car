Feature: Manage a Tournament
  As an Tournament Creator
  I want to mangae a Tournament
  So that we can play

  Scenario:  Create a new Tournament
    Given I am a logged in user
    And page should have content "Signed in successfully."
    When I click "Create a Torunamnet"
    Then I should go to the create a tournament page


    
