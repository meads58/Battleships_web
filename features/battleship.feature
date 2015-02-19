Feature: register a user
  When I want to play battleships
  As battleship player
  I want to register my name

  Scenario: entering in a new player
    Given that I am on the homepage
    When I follow "New Game"
    Then I can see "Enter Name"

  Scenario: starting the game
    Given that I am on the startgame page
    When I enter in "Maverick"
    And I press "Submit"
    Then the game begins