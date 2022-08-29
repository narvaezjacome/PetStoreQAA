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

      * def requestCreate = {"id": '#(userId)',"username": '#(username)',"firstName": '#(firstName)', "lastName": '#(lastName)',"email": '#(email)', "password": '#(password)',"phone": '#(phone)', "userStatus": '#(userStatus)'}

      Given path 'user'
      And request requestCreate
      When method post
      Then status 200

  @VariablePath
  Scenario Outline: Create with invalid username
    Given path 'user'
    And request  <username>
    When method GET
    Then status 200

    Examples:
      | username |
      | 97779898 |
      | ")(/(  " |