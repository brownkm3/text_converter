Feature: The Welcome Page
  Scenario: Display the welcome page
    When I go to the homepage
    Then I should see the welcome page

  Scenario: Converting Text from text box
    When I go to the homepage
    And I submit text via the text box
    Then I should see the converted text

  Scenario: Clearing the text box
    When I go to the homepage
    And I submit text via the text box
    And I click clear text
    Then I should get a clear text box

  Scenario: Converting Text from file
    When I go to the homepage
    And I upload a file to be converted
    Then I should see the converted text

  Scenario: Clicking submit before a file is chosen
    When I go to the homepage
    And I click submit without chosing a file
    Then I should see an error and get the opportunity to enter a file

  Scenario: Converting Text
    When I go to the homepage
    And I submit multi-line text via the text box
    Then I should see each line of converted text
