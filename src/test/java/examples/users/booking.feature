Feature: booking api tests

  Scenario: create access token
    * def body =
      """
      {
        "username" : "admin",
        "password" : "password123"
      }
      """

    Given url 'https://restful-booker.herokuapp.com/auth'
    And request body
    When method post
    Then status 200

    * def token = response.token
    * print 'token is: ', token