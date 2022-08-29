Feature: Service POST
  As QA Automation
  I want to create a client
  To validate the status code and response.

  Background: consume service
    * url url
  @User
  @CreateUser
  @HappyPath
    Scenario: check the service POST Method

      * def requestCreate = read('classpath:Karate/request/user/01_CreateUser/infoUser.json')

      Given path 'user'
      And request requestCreate
      When method POST
      Then status 200

  @VariablePath
  Scenario Outline: Create with invalid username
    Given path 'user'
    And request  <username>
    When method POST
    Then status 415

    Examples:
      | username |
      | 97779898 |
      | ")(/(  " |