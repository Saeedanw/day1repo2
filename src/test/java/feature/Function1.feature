Feature: Common func

  @Date/TimeTransformFormat1
  Scenario: Date format1
    * def dateFormat1 =
      """
      function(date){
          var date1  = new Date(date);
          var formatDate1 = date1.toUTCString();
          return formatDate1;
      }
      """
    * def formatDate1 = call dateFormat1 date
    * print "Date format1 is: ",formatDate1

  # Date format2
  @Date/TimeTransformFormat2
  Scenario: Date format2
    * def dateFormat2 =
      """
      	function(date){
      		var formatDate2 = new Date(date).toString();
      		return formatDate2;
      		}
      """
    * def formatDate2 = call dateFormat2 date
    * print "Date format2 is: ",formatDate2

  @Date/TimeTransformFormat3
  Scenario: Date format3
    * def dateFormat3 =
      """
      function(date){
          var date3  = new Date(date);
          var formatDate3 = date3.toISOString();
          return formatDate3;
      }
      """
    * def formatDate3 = call dateFormat3 date
    * print "Date format3 is: ",formatDate3

  @Date/TimeTransformFormat4
  Scenario: Date format4
    * def dateFormat4 =
      """
      function(date){
          var date4  = new Date(date);
          var formatDate4 = date4.toDateString();
          return formatDate4;
      }
      """
    * def formatDate4 = call dateFormat4 date
    * print "Date format4 is: ",formatDate4

  @Date/TimeTransformFormat5
  Scenario: Date format5
    * def dateFormat5 =
      """
      function(date){
          var formatDate5  = new Date(date).toLocaleDateString('en-us', { weekday:"long", year:"numeric", month:"short", day:"numeric"});
          return formatDate5;
          }
      """
    * def formatDate5 = call dateFormat5 date
    * print "Date format 5 is: ",formatDate5

  @Date/TimeTransformFormat6
  Scenario: Date format6
    * def dateFormat6 =
      """
      function(date){
          var date6  = new Date(date);
          var formatDate6 = date6.toGMTString();
          return formatDate6;
      }
      """
    * def formatDate6 = call dateFormat6 date
    * print "Date format6 is: ",formatDate6

  @Date/TimeTransformFormat7
  Scenario: Date format7
    * def dateFormat7 =
      """
      function(date){
      var date7 = new Date(date);
      var formatDate7 = date7.toLocaleTimeString();
      return formatDate7;
      }
      """
    * def formatDate7 = call dateFormat7 date
    * print "Date format7 is: ",formatDate7

  @Date/TimeTransformFormat8
  Scenario: Date format8
    * def dateFormat8 =
      """
      function(date){
      const months = ["JAN", "FEB", "MAR","APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC"];
      let current_datetime = new Date(date);
      let formatDate8 = current_datetime.getDate() + "-" + months[current_datetime.getMonth()] + "-" + current_datetime.getFullYear()
      return formatDate8;
      }
      """
    * def formatDate8 = call dateFormat8 date
    * print "Date format8 is: ",formatDate8

  @Date/TimeTransformFormat9
  Scenario: Date format9
    * def dateFormat9 =
      """
      function(date){
      let current_datetime = new Date(date);
      let formatDate9 = current_datetime.getFullYear() + "-" + (current_datetime.getMonth() + 1) + "-" + current_datetime.getDate() + " " + current_datetime.getHours() + ":" + current_datetime.getMinutes() + ":" + current_datetime.getSeconds()
      return formatDate9;
      }
      """
    * def formatDate9 = call dateFormat9 date
    * print "Date format9 is: ",formatDate9
