Feature: User manages products gallery
  In order to mantain products gallery with last pics
  As a user
  I want to manage products gallery

  Scenario: User list pics
    Given I am logged in as a user
    And some products are previously added
    When I go to products gallery
    I shoud see those products

  Scenario:
