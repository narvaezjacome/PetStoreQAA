Feature: Service client PUT
  As QA automation
  I want to Update an Existing Pet
  To validate the status code and response

  Background: consume service
    * url url
    * def requestPut = {"id": '#(id)',"category": {"id": 1,"name": 'perro'},"name": "doggie","photoUrls": ["string"],"tags": [{"id": 1,"name": '#(tagsName)'}],"status": "available"}
  @Pet
  @UpdatePet
  @HappyPath
  Scenario: check the service PUT (UpdatePet) To see if status code is 200.
    * def responsePut = read('classpath:Karate/request/pet/03_UpdatePet/responsePut.json')

    Given path 'pet'
    And request requestPut
    When method PUT
    Then status 200
    And match response == responsePut

  @VariablePath
  Scenario Outline: Update a pet with invalid category ID
    * def requestPut = {"id": '#(id)',"category": {"id": 1,"name": 'perro'},"name": "doggie","photoUrls": ["string"],"tags": [{"id": 1,"name": '#(tagsName)'}],"status": "available"}
    * set requestPut.category.id = <categoryId>
    Given path 'pet'
    And request requestPut
    When method PUT
    Then status 500

    Examples:
      | categoryId  |
      | "@$#%&"     |
      | "horse"     |
