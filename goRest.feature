Feature: API Tests for https://gorest.co.in/

Background: Executa toda vez antes do teste
    *def url_base="https://gorest.co.in"

Scenario: Get all users
    Given path '/public-api/users'
    When method get
    Then status 200

Scenario: Get user by ID
    Given path '/public-api/users/{id}'
    * def userId = '<ID>'
    When method get
    Then status 200

Scenario: Create user
    Given path '/public-api/users'
    And request { "name": "John Doe", "email": "john.doe@example.com", "gender": "male" }
    When method post
    Then status 201

Scenario: Update user
    Given path '/public-api/users/{id}'
    * def userId = '<ID>'
    And request { "name": "John Doe", "email": "updated.email@example.com" }
    When method put
    Then status 200

Scenario: Delete user
    Given path '/public-api/users/{id}'
    * def userId = '<ID>'
    When method delete
    Then status 204

Scenario: Filter users by gender
    Given path '/public-api/users'
    * params { "gender": "female" }
    When method get
    Then status 200

Scenario: Filter users by name
    Given path '/public-api/users'
    * params { "name": "John Doe" }
    When method get
    Then status 200

Scenario: Filter users by email
    Given path '/public-api/users'
    * params { "email": "john.doe@example.com" }
    When method get
    Then status 200

Scenario: Invalid API endpoint
    Given path '/public-api/invalid-endpoint'
    When method get
    Then status 404

Scenario: Invalid user ID
    Given path '/public-api/users/invalid-id'
    When method get
    Then status 404

Scenario: Unauthorized access
    Given url 'https://gorest.co.in/'
    When method get
    Then status 401