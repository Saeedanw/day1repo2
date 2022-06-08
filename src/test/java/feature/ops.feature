Feature: Json Operations

  Background: 
    * url 'https://gorest.co.in'
    * def tokenID = '92021ae10cf3512e73bf83739469f9dd4c2c2c708b468c6e8a8119e2c7939819'

  Scenario: json read
    * def jsonObj = read('classpath:Data/users.json')
    * print jsonObj

  Scenario: Delete user using delete api
    # First reading the data from url
    Given path "/public/v2/users"
    And header Authorization = 'Bearer ' + tokenID
    When method get
    Then status 200
    * print 'resp--1',response
    * def userId = response[4].id
    * print userId
    # json write/delete operation
    Given path "/public/v2/users/" + userId
    And header Authorization = 'Bearer ' + tokenID
    When method delete
    Then status 204
    * print response