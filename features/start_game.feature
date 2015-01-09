Feature: Starting the game
  In order to play Rock Paper Scissors
  As a nostalgic player
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    When I follow "New Game"
    Then I should see "What's your name?"
    Then I enter "Huy"
    Then I shall be redirected to "/start"
    Then I shall see "Please choose your item"