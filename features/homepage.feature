Feature: The Welcome Page
  Scenario: Display the welcome page
    When I go to the homepage
    Then I should see the welcome page

  Scenario: Converting Text
    When I go to the homepage
    And I submit text via the text box
    Then I should see the converted text

  Scenario: Clearing the text box
    When I go to the homepage
    And I submit text via the text box
    And I click clear text
    Then I should get a clear text box

  Scenario: Converting Text
    When I go to the homepage
    And I upload a file to be converted
    Then I should see the converted text
