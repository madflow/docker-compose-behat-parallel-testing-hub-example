Feature: Access the landing page

    Scenario: See a welcome message
        Given I am on "http://app"
        When I am on the homepage
        Then I should see "Welcome"
