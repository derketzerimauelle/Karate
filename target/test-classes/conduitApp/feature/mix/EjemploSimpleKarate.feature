cFeature: Ejemplo simple de karate yotube

Background:
    * url 'https://jsonplaceholder.typicode.com/'

Scenario: Obtener todos los usuarios y ordenarlos por id de usuario
    Given path 'users'
    When method Get
    Then status 200

* def firts = response[0]

Given path 'users', firts.lng
Then status 200

Scenario: Crea un user y luego obten el primer user por id
   
Given url 'https://jsonplaceholder.typicode.com/users'
When method post
Then status 201

    Scenario: comprobación user indsertado 
        Given path 'users'
        When method Get
        Then status 200 