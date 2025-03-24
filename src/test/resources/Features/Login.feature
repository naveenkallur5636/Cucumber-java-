@Admin
Feature: User Login Scenarios

  Scenario Outline: Login with valid email and invalid password
    Given the User navigates to login page
    When the user enters valid "<email>" and invalid password into respective  field
    And the User clicks on Login button
    Then the user verifies below warning message is displayed:
    """
    <message>
    """

    Examples:
      | email                  | password   | message              |
      | amotooricap9@gmail.com | 1234567890 | credentials mismatch |


  Scenario Outline: Login with invalid email and valid password
    Given User navigates to login page
    When  the user enters valid "<email>" and invalid password into respective  field
    And   User clicks on Login button
    Then  User should get a proper warning message about credentials mismatch
     """
    <message>
    """

    Examples:
      | email                  | password | message              |
      | invalidemail@gmail.com | 12345    | credentials mismatch |
      | wronguser@example.com  | 12345    | credentials mismatch |

  Scenario Outline: Login with valid email and valid password
    Given User navigates to login page
    When  the user enters valid "<email>" and invalid password into respective  field
    And   User clicks on Login button
    Then  User should be logged in successfully

    Examples:
      | email                  | password | message          |
      | amotooricap9@gmail.com | 12345    | login successful |
      | testuser@example.com   | 12345    | login successful |

Feature: Admin Dashboard Menu Options and Dashboard Cards Verification

  Scenario: Verify Admin Dashboard Menu Options
    Given Admin is logged into the dashboard
    When Admin checks the sidebar menu options
    Then the user verifies following dashboard menu option are displayed on homepage:
      | Dashboard      |
      | Users          |
      | Learning Module|
      | Support Query  |
      | Flashcards     |
      | FAQ's          |
      | Challenges     |
      | Notifications  |
      | Sign Out       |

  Scenario: Verify Admin Dashboard Cards
    Given Admin is logged into the dashboard
    When Admin checks the dashboard cards
    Then Admin should see the following cards:
      | Total Users        |
      | Active Users       |
      | Topics Completed   |
      | Average Quiz score |
      |Avg. Feedback Rating|