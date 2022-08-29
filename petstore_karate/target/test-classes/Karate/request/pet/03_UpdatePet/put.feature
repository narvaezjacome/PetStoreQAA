Feature: Service client PUT
  As QA automation
  I want to Update an Existing Pet
  To validate the status code and response

  Background: consume service
    * url url
  @Pet
  @UpdatePet
  @HappyPath
  Scenario: check the service PUT (UpdatePet) To see if status code is 200.
    * def requestPut = {"id": "#(id)", "category": {"id": "#(idCategory)", "name": "#(nameCategory)"},"name": "#(name)","photoUrls": ["#(photoUrls)"],"tags": [{"id": "#(idTags)","name": "#(nameTags)"}],"status": "#(status)"}
    * def responsePut = read('classpath:Karate/request/pet/03_UpdatePet/responsePut.json')

    Given path 'pet'
    And request requestPut
    When method put
    Then status 200
    And match response == responsePut

  @VariablePath
  Scenario Outline: Update a pet with invalid category ID
    Given path 'pet'
    And request <category.id>
    When method PUT
    Then status 404

    Examples:
      | category.id |
      | "@$#%&"     |
      | "horse"  |
      | 7885457     |