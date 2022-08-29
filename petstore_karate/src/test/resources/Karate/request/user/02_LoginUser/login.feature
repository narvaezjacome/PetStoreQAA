Feature: Log in an user
  As QA automation
  I want to login with a valid and invalid username

  Background: Consume the service
    * url url
    * def responseBody = read('classpath:Karate/request/user/02_LoginUser/responsePostUser.json')
  @User
  @LoginUser
  @HappyPath
  Scenario: Login with valid data
    Given path 'user', 'login'
    When method GET
    Then status 200

  @VariablePath
  Scenario Outline: Login with invalid username
    Given path 'user','login'
    And request  <username>
    When method GET
    Then status 200

    Examples:
      | username |
      | 97779898 |
      | ")(/(  " |