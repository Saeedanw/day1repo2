@meta1
Feature: first feature file

  Background: URL
    * url 'https://gorest.co.in/public/v2/users'
    * header Accept = 'application/json'
    
	@gone
  Scenario: Test
    
    When method get
    Then status 200
    And print 'r1', response
  	* def userId = 2509
  
  	#delete data
  	Given path "/public/v2/users/" + userId
    And header Authorization = 'Bearer ' + tokenID
    And match response[*].id contains [3079,3068]
    * print response
    
	@version=1.1
  Scenario: match each
    Given param page = 2
    When method get
    Then status 200
    
    
    And match each response contains { id: '#number',name: '#string' }

	@version=1.2
  Scenario: Schema Validation
    Given param page = 2
    When method get
    Then status 200
    And match response[*].id == '#[] #number'
    * print response.id

  Scenario: Fuzzy matching
    Given param page = 2
    When method get
    Then status 200
    And match response contains {id:'#number? _ > 0',name:'#string',email:'#notnull',gender:'#string',status:'#ignore'}
	@test2
  Scenario: Contains shortcuts
    Given param page = 2
    When method get
    Then status 200
    * def exp =
      """
       [
      {
    "id": 2753,
    "name": "Jyoti Gill Sr.",
    "email": "gill_sr_jyoti@volkman.io",
    "gender": "female",
    "status": "active"
  },
  {
    "id": 2752,
    "name": "Dr. Mukul Kaur",
    "email": "kaur_mukul_dr@trantow-roberts.co",
    "gender": "male",
    "status": "active"
  }
        ]
      """
    And match response != '#(^exp)'

  Scenario: match header
    Given param page = 2
    When method get
    Then status 200
    Then match header Content-Type contains 'application'