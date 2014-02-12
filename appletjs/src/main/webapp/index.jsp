<html>

<script language="Javascript">
	/* function getANumber() {
		var number = prompt("Please enter your name","0");
		return number;
	}
	function displayNumber(text) {
		document.getElementById('displayArea').append('<br />'+text);
	}
	function displayError(message) {
		alert(message);
	}
	 */
	function enterNums(){
		var numA = prompt('Enter number \'a\' greater than or equal to zero:','0');
        var numB = prompt('Enter number \'b\' (should be greater than number \'a\') :','2');
		// set applet's public variable
        mathApplet.userName = "John Doe";

        // invoke public applet method
        var greeting = mathApplet.getGreeting();

        // get another class referenced by applet and invoke its methods
        var calculator = mathApplet.getCalculator();
        calculator.setNums(numA, numB);

        // primitive datatype returned by applet
        var sum = calculator.add();

        // array returned by applet
        var numRange = calculator.getNumInRange();
        var numRangeStr = arrayToString(numRange);

        // check Java console log for this message
        mathApplet.printOut("Testing printing to System.out");

        // get another class, set static field and invoke its methods
        var dateHelper = mathApplet.getDateHelper();
        dateHelper.label = "Today\'s date is: ";
        var dateStr = dateHelper.getDate();

        document.writeln("<p>Results of JavaScript to Java Communication</p>");
        document.writeln("<p>" + greeting + "</p>");
        document.writeln("<p> a = " + numA + " ; b = " + numB + " </p>");
        document.writeln("<p>Sum: " + sum + "</p>");
        document.writeln("<p>Numbers in range array: " + numRangeStr + "</p>");
        document.writeln("<p>" + dateStr + "</p>");

	}


    function arrayToString(arr) {
        var ret = "[ ";
        for (i = 0; i < arr.length; i++) {
            if (i > 0) {
                ret += ", ";
            }
            ret += arr[i];
        }
        ret += " ]";
        return ret;
    }

</script>

<head>
<title>Testing</title>
</head>
<body>

	<h1>Applet acess Javascript method</h1>
	
	<!-- <APPLET code="com.saikrishna.appletjs.Calculator.class" 
        archive="applets.jar"
        width=250 height=250>
	</APPLET> -->
	
	<script src="https://www.java.com/js/deployJava.js"></script>
    <script>
        <!-- applet id can be used to get a reference to the applet object -->
        var attributes = { id:'mathApplet', code:'jstojava.MathApplet', width:1, height:1} ;
        var parameters = {jnlp_href: 'math_applet.jnlp'} ;
        deployJava.runApplet(attributes, parameters, '1.6');
    </script>
	
	 <p><a href="javascript:enterNums();">Launch Calculator</a></p>
</body>
</html>