<html>

<script language="Javascript">
	function getANumber() {
		var number = prompt("Please enter your name","0");
		return number;
	}
	function displayNumber(text) {
		document.getElementById('displayArea').append('<br />'+text);
	}
	function displayError(message) {
		alert(message);
	}
</script>

<head>
<title>Testing</title>
</head>
<body>

	<h1>Applet acess Javascript method</h1>
	
	<APPLET code="com.saikrishna.appletjs.Calculator.class" 
        archive="applets.jar"
        width=250 height=250>
	</APPLET>
	
</body>
</html>