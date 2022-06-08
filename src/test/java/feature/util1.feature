Feature: To call common func

  Background: 
    * def list = read('date_time.json')
		
  * def date = list.dates
  * print date
  
  Scenario Outline: Date/Time transformation format <date>
  	Given url date
    * def dateTime1 = call read('Function.feature@Date/TimeTransformFormat1') { date: '#(date)' }
    * print dateTime1
    
    Examples:
    	|date|

  Scenario Outline: Date/Time transformation format <date>
  	Given url date
  
    * def dateTime2 = call read('Function.feature@Date/TimeTransformFormat2') { date: '#(date)' }
    * print dateTime2

		  Examples:
    	|date|
    	
  Scenario Outline: Date/Time transformation format <date>
  	 Given url date
    * def dateTime3 = call read('Function.feature@Date/TimeTransformFormat3') { date: '#(date)' }
    * print dateTime3
		 Examples:
    	|date|
    	
  Scenario Outline: Date/Time transformation format <date>
  	Given url date
    * def dateTime4 = call read('Function.feature@Date/TimeTransformFormat4') { date: '#(date)' }
    * print dateTime4
    
     Examples:
    	|date|

  Scenario Outline: Date/Time transformation format <date>
  	Given url date
    * def dateTime5 = call read('Function.feature@Date/TimeTransformFormat5') { date: '#(date)' }
    * print dateTime5
    
     Examples:
    	|date|

  Scenario Outline: Date/Time transformation format <date>
  	Given url date
    * def dateTime6 = call read('Function.feature@Date/TimeTransformFormat6') { date: '#(date)' }
    * print dateTime6
    
    Examples:
    	|date|

  Scenario Outline: Date/Time transformation format <date>
  	Given url date
    * def dateTime7 = call read('Function.feature@Date/TimeTransformFormat7') { date: '#(date)' }
    * print dateTime7
    
     Examples:
    	|date|

  Scenario Outline: Date/Time transformation format <date>
  	Given url date
    * def dateTime8 = call read('Function.feature@Date/TimeTransformFormat8') { date: '#(date)'}
    * print dateTime8
    
     Examples:
    	|date|

  Scenario Outline: Date/Time transformation format <date>
  	Given url date
    * def dateTime9 = call read('Function.feature@Date/TimeTransformFormat9') { date: '#(date)' }
    * print dateTime9
		
		 Examples:
    	|date|
