Feature: Manage Movies
  Scenario: Movies List
    Given I have only have Movies titled Matrix, Tron
    When I go to movies
    Then I should see "Matrix"
    And I should see "Tron"
    And I should not see "Ready Player One"