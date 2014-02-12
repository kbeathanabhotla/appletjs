<html>

<script language="Javascript">
	function callHello(name) {
		alert("hello " + name);
	}
</script>

<head>
<title>Testing</title>
</head>
<body>

	<h1>Applet acess Javascript method</h1>
	<!-- <applet width=300 height=100 MAYSCRIPT
		code="WEB-INF/classes/com/mkyong/applet/JavaToJavaScript.class"
		codebase="/appletjs/WEB-INF/classes"> </applet>
	 -->
	<APPLET code="com.mkyong.applet.JavaToJavaScript.class" 
        archive="applets.jar"
        width=250 height=250>
	</APPLET>
	
</body>
</html>