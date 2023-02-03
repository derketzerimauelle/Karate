@Marvel
Feature: Marvel get
Background: 
    Given url 'https://gateway.marvel.com:443/v1/public/'
    * def ts = '1'
    * def apikey = '193f8f8bf5e42ce1c7562826b605b25f'
    * def hash =  '81f90bd362f13ba7648de1218669dcae'

Scenario: DemoMarvel
    Given path 'characters'
    * param ts = ts
    * param apikey = apikey
    * param hash  = hash

    When method Get
    Then status 200
    * print  response.data.results
