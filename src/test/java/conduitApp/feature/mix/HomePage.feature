@udemy
Feature: test pantalla de inico

Background: UURRLL

    Given url apiurl
    * def TokenTake = callonce read('classpath:conduitApp/Helpers/Helper.feature')  
    *  def Token = 'Token '+ TokenTake.TokenAut



  Scenario: obtener todos los tags

    Given path 'api/tags'
    When method Get
    Then status 200
    And match response.tags contains 'welcome', 'ipsum'
    And match response.tags !contains 'cachondo'
    And match response.tags =='#array'
    And match each response.tags =='#string'


    @consulta

    Scenario: consultar articulos del user
      
      Given path 'api/articles'
      * header Authorization = Token
      When method Get
      Then status 200
    


    
    
    @new
    Scenario: Crear nuevo articulo
      * header Authorization = Token
      * def articulonewdell = 
              """

              {
                "article":
                {
        "title": "Cachorro4SEGUNDAVUELTA",
        "description": "cachorrorreno44daVuelta",
        "body": "Noentiendo la definitiva",
        "tagList": []
                }
                }

            """

      Given path 'api/articles'
      And request articulonewdell
      When method post
      Then status 200
      * print response
      * def slug = response.slug



    @dell

    Scenario: Eliminar articulo
      * header Authorization = Token
      Given path 'api/articles/Cachorro4-130590'
      When method delete
      Then status 204
      Then print response
    
    