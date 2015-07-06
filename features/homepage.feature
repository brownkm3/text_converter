Feature: The Welcome Page
  Scenario: Display the welcome page
    When I go to the homepage
    Then I should see the welcome page

  Scenario: Converting Text
    When I submit text via the text box
    Then I should see the converted text
