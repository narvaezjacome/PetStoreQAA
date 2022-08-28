Feature: Service POST
  As QA Automation
  I want to create a client
  To validate the status code and response.

  Background: consume service
    * url url

    Scenario: check the service POST Method

      * def requestCreate = {"id": '#(userId)',"username": '#(username)',"firstName": '#(firstName)', "lastName": '#(lastName)',"email": '#(email)', "password": '#(password)',"phone": '#(phone)', "userStatus": '#(userStatus)'}

      Given path 'user'
      And request requestCreate
      When method post
      Then status 200