<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib uri="http://richfaces.org/rich" prefix="rich" %>
<%@ taglib uri="http://richfaces.org/a4j" prefix="a4j" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<f:view>
<h:form>
<div style="display: block; float: left">
<h:selectOneRadio value="#{skinBean.skin}" border="0" layout="pageDirection" title="Changing
skin" style="font-size: 8; font-family: comic" onchange="submit()">
<f:selectItem itemLabel="plain" itemValue="plain" />
<f:selectItem itemLabel="emeraldTown" itemValue="emeraldTown" />
<f:selectItem itemLabel="blueSky" itemValue="blueSky" />
<f:selectItem itemLabel="wine" itemValue="wine" />
<f:selectItem itemLabel="japanCherry" itemValue="japanCherry" />
<f:selectItem itemLabel="ruby" itemValue="ruby" />
<f:selectItem itemLabel="classic" itemValue="classic" />
<f:selectItem itemLabel="health" itemValue="health" />
<f:selectItem itemLabel="deepMarine" itemValue="deepMarine" />
<f:selectItem itemLabel="DEFAULT" itemValue="DEFAULT" />
</h:selectOneRadio>
</div>
<div style="display: block; float: left">
<rich:panelBar height="100" width="200">
<rich:panelBarItem label="Item 1"  >
Changing skin in runtime
</rich:panelBarItem>
<rich:panelBarItem label="Item 2" >
This is a result of the modification "blueSky" skin
</rich:panelBarItem>
</rich:panelBar>
</div>
</h:form>
</f:view>
</body>
</html>