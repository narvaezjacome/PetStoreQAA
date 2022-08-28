Feature: Service GET
  As QA Automation
  I want to login a client
  To validate the status code and response.

  Background: consume service
    * url url


  Scenario: check the login Method

    * params { username: '#(username)', password: '#(password)' }

    Given path 'user/login'
    When method get
    Then status 200
    And assert response.code == 200

  Scenario Outline: check the login Method with bad credentials

    * params { username: '<username>', password: '<password>' }

    Given path 'user/login'
    When method get
    Then status 400

    Examples:
      | username   | password   |
      | .45.2      | 4sds5      |
      | "NotFound" | )/&/(      |
      |            | 0000       |
      | "@#$%&"    | OIUHJK     |