Feature: Starting the game
  In order to play Rock Paper Scissors
  As a nostalgic player
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    Then I should see "Welcome to Classic RPS"
    Then I should see "What is your name?"
    Then I enter "Huy"
    Then I shall be redirected to "/start"

  Scenario: Starting a new game
    Given I am on the start page
    Then I shall see "Please choose your item"