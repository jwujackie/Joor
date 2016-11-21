##Author: Baktiar Miah
#Date Created: 11/20/16

Feature: Messaging
  Scenario: Send Message
    Given That I am on staging.joordev.com
    When I Sign in as a user
    And I Navigate to messages
    Then I should be able to send a message


