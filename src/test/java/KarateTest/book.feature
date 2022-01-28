Feature: Verifying view and add books feature

  Background:
    * url 'http://216.10.245.166'

  Scenario: Verify get book from library
    * def query = {ID:'bcd22736'}
    Given path 'Library/GetBook.php'
    And params query
    When method GET
    Then status 200
    * print response

   # Verifying some responses using GET method
  Scenario: Verify author name and aisle from the book
    * def query = {ID:'bcd22736'}
    * def expectedAisle = "22736"
    Given path 'Library/GetBook.php'
    And params query
    When method GET
    Then status 200
    And match response.[0].author == "John foe"
    And match response.[0].aisle == expectedAisle
    And match response.[0].book_name == '#present'
    And match response == '#array'
    And match response == '#[1]'