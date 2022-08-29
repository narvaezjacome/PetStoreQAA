Feature: Service delete pet
  As AQ Automation
  I want to Delete a pet
  to validate the Status code and response

  Background: consume service
    * url url
    @Pet
  @DeletePet
  @HappyPath
  Scenario: Check the service DELETE pet

      Given path 'pet', 'id'
      When method DELETE
      Then status 200
      And match response == deleteResponse
      And assert response.message == message

@VariablePath
  Scenario Outline: DELETE a pet with values an id in the url


    Given path 'pet', <id>
    When method DELETE
    Then status <code>
    And match response == <expected>

    Examples:
      | id         | code | expected                                                                                              |
      | 444.888    | 404  | {"code": "#number","type": "#string","message": "#string"}                                            |
      | "@#$%&"    | 404  | {"code": "#number","type": "#string","message": "#string"}                                            |