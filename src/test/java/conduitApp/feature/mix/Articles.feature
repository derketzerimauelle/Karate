Feature: set ariculo

Background: url
    Given url 'https://api.realworld.io/'
    
Scenario: logeo
    Given path 'api/users/login'
    And request  {"user": {"email": "mock@prueba.com","password": "123456"}}
    When method post
    Then status 200
    * def token = response.user.token 

    Given header Authorization = 'Token ' + token
    Given path 'api/articles/'
    And request {"article": {"tagList": [],"title": "5.0.0","description": "okko","body": "Karate"}}
    When method Post
    Then status 200 
    And match response.article.title == '#string'

