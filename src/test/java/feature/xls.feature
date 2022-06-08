Feature: Reading xls file

  Scenario: Reading xls file
    * def doTesting = Java.type('org.kp.services.tests.ReadXLSFile')
    * def results = doTesting.readExcel("C:\\Users\\Barath.Raju\\OneDrive - Accenture\\Documents\\demo.xls","sheet1")
    #* def fun = function(x){ return karate.fromString(x) }
    #* raw.names = karate.map(raw.names, fun)
    #* print raw
    * print results
    * json res = results
    * print res
    * json temp = results
    * json finalres = temp.status[0]
    * print finalres[0]
#* print finalres.color
#* json finalres1 = temp.data[0]
#* print finalres1
#* print finalres1.dept
#* json finalres = res.names[2]
#* print finalres.color
