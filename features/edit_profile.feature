Feature: Edit profile user

  Scenario: Editing user profile filling all fields correctly
    Given I am logged into the application
    And is on the profile editing page
    And fill in all fields correctly
    When I click in button "Submit"
    Then I should see the message "User was successfully updated."

  Scenario: Editing user profile by filling in all fields except the name field
    Given I am logged into the application
    And is on the profile editing page
    And fill in all fields correctly  except the name field
    When I click in button "Submit"
    Then I should see the message "Name can't be blank"


  Scenario: Editing user profile by filling in all fields except the email field
    Given I am logged into the application
    And is on the profile editing page
    And fill in all fields correctly  except the email field
    When I click in button "Submit"
    Then I should see the message "Email can't be blank"

  Scenario: Editing user profile by filling in all fields except the password field
    Given I am logged into the application
    And is on the profile editing page
    And fill in all fields correctly  except the password field
    When I click in button "Submit"
    Then I should see the message "Password can't be blank"

  Scenario: Editing user profile by filling in all fields except the password confirmation field
    Given I am logged into the application
    And is on the profile editing page
    And fill in all fields correctly  except the password confirmation field
    When I click in button "Submit"
    Then I should see the message "Password confirmation doesn't match Password"
