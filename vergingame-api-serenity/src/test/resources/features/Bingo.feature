Feature: Test on Virgingames application

  Scenario Outline: Verify the response contains pot with selected currency
    When I send a GET request to get the pots with "<currency>"
    Then I get the valid status code 200
    Examples:
      | currency |
      | GBP      |
      | SEK      |
      | EUR      |

  Scenario Outline: Verify that the pot 'Id' is associated with the correct 'name' and 'currency'
    When I send a GET request to get the pots with "<currency>"
    Then I send ID: "<id>" to find corresponding Name: "<name>"
    Examples:
      | currency | id   | name               |
      | GBP      | 194  | Adventure          |
      | SEK      | 309  | virgingamessession |
      | EUR      | 3544 | 80BallBingoVGN     |