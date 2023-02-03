Feature: Get token
Scenario: Login, Obtener token

    Given url apiurl
    * path 'api/users/login'
    * request {"user":{"password": "#(password)","email": "#(email)"}}
    When method post
    Then status 200
    * def TokenAut = response.user.token