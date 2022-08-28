Feature: Service client POST
  As QA automation
  I want to Create a pet
  To validate the status code and status

  Background: consume service
    * url url

  Scenario:  check the service POST


    * def CreatePet = {"id": '#(id)',"category": {"id": 1,"name": '#(nameCategory)'},"name": "doggie","photoUrls": ["string"],"tags": [{"id": 1,"name": '#(tagsName)'}],"status": "available"}

    Given path 'pet'
    And request CreatePet
    When method POST
    Then status 200

  Scenario Outline: Add a pet using a valid status

    Given path 'pet'
    And request <status>
    When method post
    Then status 415

    Examples:
      | status     |
      | "@$#%&"    |
      | "squirtle" |
      | 123.123    |
