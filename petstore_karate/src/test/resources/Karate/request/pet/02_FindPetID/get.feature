Feature: Service client GET
  As AQ Automation
  I want to Find a Pet by its ID
  to validate the status code and response

  Background: consume service
    * url url
  @Pet
  @FindPet
  @HappyPath
  Scenario: Check the service GET


    * def responseGet = read('classpath:Karate/request/pet/02_FindPetID/reponseGet.json)

    Given path 'pet', id
    When method GET
    Then status 200
    And match response == responsesGet
    And assert response.support.text == "To keep ReqRes free, contribuitions

  @VariablePath
  Scenario Outline: Find a pet by ID incorrect

    Given path 'pet', id
    And request <id>
    When method get
    Then status 404

    Examples:
      | id     |
      | "@#$%" |
      | "fish" |
      | 123.123|