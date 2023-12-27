Feature: Get data from a web service

  Scenario: Fetch user data
    Given url sampleURL
    And path 'api/users/2'
    When method GET
    Then status 200
  * print testVar

  Scenario Outline: name is <name> and age is <age>
    * def temp = '<name>'
    * match temp == name
    * print temp
    * match temp == __row.name
    * def expected = __num == 0 ? 'name is Bob and age is 5' : 'name is Nyan and age is 6'
    * match expected == karate.scenario.name
    * print expected

    Examples:
      | name | age |
      | Bob  | 5   |
      | Nyan | 6   |

    Scenario: Create a user using POST
    Given url 'https://reqres.in/'
      Given path 'api/users'
      * def requestPayload = read('CreateUser.json')
      And request requestPayload
      When method post
      Then status 201