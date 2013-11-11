Feature: Manage a Tournament
  As an Admin
  I want to mangae a Tournament
  So that we can play

  Scenario:  Create a new Tournament
    Given I am an admin
    When I log in
    And I click "Create a Tournament"
    Then I can create a Tournament

    
