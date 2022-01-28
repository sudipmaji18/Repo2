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

    # comment one in subbranchone