<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://richfaces.org/rich" prefix="rich" %>
<%@ taglib uri="http://richfaces.org/a4j" prefix="a4j" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>
<f:view>
<rich:layout>
<rich:layoutPanel position="top">
<a4j:commandLink onclick="" ajaxSingle="true">Rigistration</a4j:commandLink>
<a4j:commandLink>Information</a4j:commandLink>
</rich:layoutPanel>
<rich:layoutPanel position="center">
<a4j:include id="container" layout="block" ajaxRendered="true" viewId="/AccountSection/RegisterPatient.jsp" ></a4j:include>
</rich:layoutPanel>

</rich:layout>

</f:view>

</body>

</html>