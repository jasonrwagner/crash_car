Feature: Manage a Tournament
  As an Tournament Creator
  I want to mangae a Tournament
  So that we can play

  Scenario:  Create a new Tournament
    Given I am a logged in user
    When I create a new tournament
    Then I should see it in the tournaments list


    
