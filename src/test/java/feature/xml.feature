@regression
Feature: xml operations
	
  Scenario: read & update
    # reading XML file
    * def xmlbody =  karate.read('classpath:Data/test.xml')
    * print xmlbody
    
    
    # Updating XML
    * set xmlbody/catalog/book[2]/title = 'Slash-x'
    * remove xmlbody/book/genre
    * print xmlbody
