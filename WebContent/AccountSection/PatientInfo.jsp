 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib uri="http://richfaces.org/rich" prefix="rich" %>
<%@ taglib uri="http://richfaces.org/a4j" prefix="a4j" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="../StyleFiles/patient.css" type="text/css"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<f:view>
<h:form> 


<div id="printTable" >
<rich:panel id="pd" header="Patient Administration" >
<div align="right">
<table bgcolor="red" >
<tr>
<th>
Search By
</th>
<td>
<rich:comboBox buttonIcon="/Resources/Icons/heart_half.png" suggestionValues="#{patientInfoModel.optionValues }" value="#{patientInfoModel.searchBy }" defaultLabel="Search By..." buttonIconInactive="/Resources/Icons/heart.png">
<a4j:support event="onblur" ajaxSingle="true"></a4j:support>
</rich:comboBox>
</td>
</tr>
<tr>
<th>
SearchString
</th>
<td>
	<rich:comboBox id="countryInput" defaultLabel="Search String..." buttonIcon="/Resources/Icons/group.png" buttonIconInactive="/Resources/Icons/group.png" label="Search String..."  value="#{patientInfoModel.searchString}">
		<a4j:support event="onkeyup"  reRender="ptable" ajaxSingle="true" />
	</rich:comboBox>
	</td>
	</tr>
	</table>
</div>
<div style="overflow-x:auto;overflow-y:auto">

<rich:dataTable id="ptable"   onRowMouseOver="this.style.backgroundColor='#FBE7C9'" onRowMouseOut="this.style.backgroundColor='white'" value="#{patientInfoModel.patientList}"  var="p" rows="10" sortMode="multi"  >
<f:facet name="header">
<h:outputText value="Registered Patient Information"></h:outputText>
</f:facet>

<rich:column sortBy="#{p.p_reg_no }" >
<f:facet name="header">
<h:outputText value="Registration No"></h:outputText>
</f:facet>
<h:outputText value="#{p.p_reg_no }" ></h:outputText>
</rich:column>

<rich:column>
<f:facet name="header">
<h:outputText value="Reg Date"></h:outputText>
</f:facet>
<h:outputText value="#{p.p_reg_date }"></h:outputText>
</rich:column>

<rich:column>
<f:facet name="header">
<h:outputText value="First Name"></h:outputText>
</f:facet>
<h:outputText value="#{p.p_fname }"></h:outputText>
</rich:column>

<rich:column>
<f:facet name="header">
<h:outputText value="Middle Name"></h:outputText>
</f:facet>
<h:outputText value="#{p.p_mname }"></h:outputText>
</rich:column>

<rich:column>
<f:facet name="header">
<h:outputText value="Last Name"></h:outputText>
</f:facet>
<h:outputText value="#{p.p_lname}"></h:outputText>
</rich:column>

<rich:column>
<f:facet name="header">
<h:outputText value="Address"></h:outputText>
</f:facet>
<h:outputText value="#{p.p_address }"></h:outputText>
</rich:column> 


<rich:column >
<f:facet name="header">
<h:outputText value="Country"></h:outputText>
</f:facet>
<h:outputText value="#{p.p_country }"></h:outputText>
</rich:column>

<rich:column>
<f:facet name="header">
<h:outputText value="State"></h:outputText>
</f:facet>
<h:outputText value="#{p.p_state }"></h:outputText>
</rich:column>

<rich:column>
<f:facet name="header">
<h:outputText value="City"></h:outputText>
</f:facet>
<h:outputText value="#{p.p_city }"></h:outputText>
</rich:column>


<rich:column>
<f:facet name="header">
<h:outputText value="Mob Number"></h:outputText>
</f:facet>
<h:outputText value="#{p.p_mob_no }"></h:outputText>
</rich:column>


<rich:column>
<f:facet name="header">
<h:outputText value="Phone Number"></h:outputText>
</f:facet>
<h:outputText value="#{p.p_phone_no }"></h:outputText>
</rich:column>


<rich:column>
<f:facet name="header">
<h:outputText value="Email"></h:outputText>
</f:facet>
<h:outputText value="#{p.p_email_address }"></h:outputText>
</rich:column>

<rich:column>
<f:facet name="header">
<h:outputText value="Marital Status"></h:outputText>
</f:facet>
<h:outputText value="#{p.p_marital_status }"></h:outputText>
</rich:column>

<rich:column>
<f:facet name="header">
<h:outputText value="Religion"></h:outputText>
</f:facet>
<h:outputText value="#{p.p_religion }"></h:outputText>
</rich:column>

<rich:column>
<f:facet name="header">
<h:outputText value="Gender"></h:outputText>
</f:facet>
<h:outputText value="#{p.p_gender }"></h:outputText>
</rich:column>

<rich:column>
<f:facet name="header">
<h:outputText value="Fath/Husb"></h:outputText>
</f:facet>
<h:outputText value="#{p.p_fath_husb_name }"></h:outputText>
</rich:column>

<rich:column>
<f:facet name="header">
<h:outputText value="Status"></h:outputText>
</f:facet>
<h:outputText value="#{p.p_status }"></h:outputText>
</rich:column>

<rich:column>
<f:facet name="header">
<h:outputText value="Age"></h:outputText>
</f:facet>
<h:outputText value="#{p.p_age }"></h:outputText>
</rich:column>

<rich:column>
<f:facet name="header">
<h:outputText value="Edit"></h:outputText>
</f:facet>
<a4j:commandButton image="/Resources/Icons/vcard_edit.png" 
reRender="ptable"
onclick="Richfaces.showModalPanel('updatePanel')">
<f:setPropertyActionListener value="#{p}"
target="#{patientInfoModel.selected}" />
</a4j:commandButton>
</rich:column>

<rich:column>
<f:facet name="header">
<h:outputText value="Delete"></h:outputText>
</f:facet>
<a4j:commandButton image="/Resources/Icons/vcard_delete.png"
onclick="Richfaces.showModalPanel('deletePanel')">
<f:setPropertyActionListener value="#{p}"
target="#{patientInfoModel.selected}" />
</a4j:commandButton> 

</rich:column>

<f:facet name="footer">
<rich:datascroller styleClass="noprint" selectedStyle="font-weight:bold" maxPages="5"
pageIndexVar="currentPage" pagesVar="totalPages" fastStep="3" page="1">
</rich:datascroller>
</f:facet>

</rich:dataTable>
</div>
</rich:panel>
</div>
</h:form>
<h:commandButton  styleClass="noprint" value="Print table" onclick="javascript:window.print();"></h:commandButton>

<rich:modalPanel id="updatePanel" label="Model" shadowDepth="20" shadowOpacity="5" minHeight="550" minWidth="600" moveable="ture">
<f:facet name="header">
<h1><font color="gray">Pateient Information</font></h1>
</f:facet>
<f:facet name="controls">
<h:commandButton style="cursor:pointer"
onclick="Richfaces.hideModalPanel('updatePanel')"  image="/Resources/Icons/cross.png" />
</f:facet>
<h:form>
<rich:messages ></rich:messages>
<a4j:outputPanel ajaxRendered="true">
		<h:panelGrid columns="2" styleClass="foo" >
		  
		 <rich:panel styleClass="ppanel">
		 
	
		    <h:panelGrid columns="2" styleClass="fo" >
		   
			<h:outputLabel value="Patient Registration No"></h:outputLabel>
		 	<h:panelGroup>
		  		 <p><h:message for="p_reg_no" styleClass="e"/></p>
		  		 <h:inputText id="p_reg_no" label="Patient Registration No" value="#{patientInfoModel.selected.p_reg_no}" required="true" disabled="true">
		  			<rich:ajaxValidator event="onblur"/>
		  		 </h:inputText>
			</h:panelGroup>	
			
		    <h:outputText value="Patient Registration Date"></h:outputText>
			<h:panelGroup>
		  		 <p><h:message id="date_errors" for="p_reg_date" styleClass="e"/></p>
		  	     <rich:calendar id="p_reg_date" label="Patient Registration Date" value="#{patientInfoModel.selected.p_reg_date}" datePattern="MM/dd/yyyy" required="true">
		      	 </rich:calendar>
		    </h:panelGroup>
	   		
	   		<h:outputText value="Patient First Name"></h:outputText>
		    <h:panelGroup>
		  		 <p><h:message for="p_fname" styleClass="e"/></p>
		  		 <h:inputText id="p_fname" label="Patient First Name" value="#{patientInfoModel.selected.p_fname}" required="true">
		   		 </h:inputText> 
		    </h:panelGroup>
		    
	   		<h:outputText value="Patient Last Name"></h:outputText>
		  	<h:panelGroup>
		  		  <p><h:message for="p_lname" styleClass="e"/></p>
		  		  <h:inputText id="p_lname" label="Patient Last Name" value="#{patientInfoModel.selected.p_lname}" required="true">
		   		  </h:inputText> 
		   	 </h:panelGroup>
		   	 
	   		<h:outputLabel>Patient Country</h:outputLabel>
			<h:panelGroup>
 				 <p><h:message for="p_country" styleClass="e" /></p>
				 <h:selectOneMenu label="Patient Country" id="p_country" value="#{patientInfoModel.selected.p_country}" required="true">
				 	<f:selectItem itemLabel="--Select Country--"/>
				 	<f:selectItems  value="#{appUtilities.countryNames }" var="cn" itemValue="#{cn.itemValue }" />
				 </h:selectOneMenu>
			</h:panelGroup>
			
			<h:outputLabel>Patient State</h:outputLabel>
			<h:panelGroup>
 			     <p><h:message for="p_state" styleClass="e" /></p>
				 <h:selectOneMenu label="Patient State" id="p_state" value="#{patientInfoModel.selected.p_state}"  required="true">
					 <f:selectItem itemLabel="--Select State--"/>
				 	 <f:selectItems value="#{appUtilities.stateNames }" var="sn" itemValue="#{sn.itemValue }"/>
        	    </h:selectOneMenu>
			</h:panelGroup>
			
			<h:outputLabel>Patient City</h:outputLabel>
			<h:panelGroup>
 				<p><h:message for="p_city" styleClass="e"/></p>
				<h:selectOneMenu label="Patient City" id="p_city" value="#{patientInfoModel.selected.p_city}" required="true">
					<f:selectItem itemLabel="--Select City--" />
					<f:selectItems value="#{appUtilities.cityNames }" var="ctn"  itemValue="#{ctn.itemValues }"  />
	     		</h:selectOneMenu>
			</h:panelGroup>
			
			<h:outputLabel>Patient Marital Status</h:outputLabel>
			<h:panelGroup>
				<h:message for="p_marital_status" styleClass="e" />
				<h:selectOneRadio label="Patient Marital Status" id="p_marital_status" value="#{patientInfoModel.selected.p_marital_status}" required="true">
					<f:selectItem itemLabel="Married" itemValue="Married" />
					<f:selectItem itemLabel="UnMarried" itemValue="UnMarried" />
				</h:selectOneRadio>
			</h:panelGroup>
			
			 <h:outputLabel>Patient Gender</h:outputLabel>
			<h:panelGroup>
				<h:message for="p_gender" styleClass="e"/>
				<h:selectOneRadio label="Patient Gender" id="p_gender" value="#{patientInfoModel.selected.p_gender}" required="true">
					<f:selectItem itemLabel="Male" itemValue="Male"/>
					<f:selectItem itemLabel="Female" itemValue="Female"/>
	  				<f:selectItem itemLabel="Other" itemValue="Other"/>
				</h:selectOneRadio>
	     	</h:panelGroup>
	     	<h:outputText value="Patient Age"></h:outputText>
		  	 <h:panelGroup>
		  	 	 <h:message  for="p_age" styleClass="e"/>
		  	 	 <h:inputText id="p_age" label="Patient Age" value="#{patientInfoModel.selected.p_age}" required="true">
		  	 	 <f:convertNumber  integerOnly="true" maxIntegerDigits="3"/>
		         </h:inputText> 
		   	 </h:panelGroup>
		   	 <h:outputLabel>Patient Status</h:outputLabel>
			<h:panelGroup>
				<h:message for="p_status" styleClass="e"/>
				<h:selectOneRadio label="Patient Status" id="p_status" value="#{patientInfoModel.selected.p_status}" required="true">
					<f:selectItem itemLabel="Indoor" itemValue="Indoor"/>
					<f:selectItem itemLabel="Outdoor" itemValue="Outdoor"/>
				</h:selectOneRadio>
			</h:panelGroup>
			
		 </h:panelGrid>	
		 
		</rich:panel>
		<rich:panel>
		 <h:panelGrid columns="2" styleClass="fo" >
		  
			<h:outputText value="Patient Address"></h:outputText>
		  	 <h:panelGroup>
		  		  <p><h:message for="p_address" styleClass="e"/></p>
		  		  <h:inputText id="p_address" label="Patient Address"  value="#{patientInfoModel.selected.p_address}" >
		   		  </h:inputText> 
		   	 </h:panelGroup>
			
			<h:outputLabel>Patient Mobile No</h:outputLabel>
			<h:panelGroup>
		    	<h:inputText label="Patient Mobile No" id="p_mob_no" value="#{patientInfoModel.selected.p_mob_no}">
				</h:inputText>
			</h:panelGroup>
			
			<h:outputText value="Patient Middle Name"></h:outputText>
		    <h:panelGroup>
		    	 <p><h:message for="p_mname" styleClass="e"/></p>
		  	 	 <h:inputText id="p_mname" label="Patient Middle Name" value="#{patientInfoModel.selected.p_mname}">
		   	     </h:inputText> 
		    </h:panelGroup>
			<h:outputLabel>Patient Phone No</h:outputLabel>
			<h:panelGroup>
				<h:inputText label="Patient Phone No" id="p_phone_no" value="#{patientInfoModel.selected.p_phone_no}">
				</h:inputText>
			</h:panelGroup>
			
	        <h:outputLabel>Patient Email Address</h:outputLabel>
			<h:panelGroup>
			    <h:message for="p_email_address"></h:message>
			    <h:inputText label="Patient Email Address" id="p_email_address" validator="#{patientBean.validateEmail }" value="#{patientInfoModel.selected.p_email_address}">
				</h:inputText>
			</h:panelGroup>
			
			<h:outputLabel>Patient Religion</h:outputLabel>
			<h:panelGroup>
 				<p><h:message for="p_religion" styleClass="e"/></p>
				<h:selectOneMenu label="Patient Religion" id="p_religion" value="#{patientInfoModel.selected.p_religion}">
					<f:selectItem itemLabel="--Select Religion--" />
					<f:selectItems  value="#{appUtilities.religionNames }" var="rn" itemValue="#{rn.itemValue }" />
				</h:selectOneMenu>
			</h:panelGroup>
			
		    <h:outputLabel>Patient Father/Husband Name</h:outputLabel>
			<h:panelGroup>
				<h:inputText label="Patient Fath/Hus Name" id="p_fath_husb_name" value="#{patientInfoModel.selected.p_fath_husb_name}">
				</h:inputText>
			</h:panelGroup>
			
			</h:panelGrid>
			</rich:panel>
</h:panelGrid>
</a4j:outputPanel>
<h:commandButton value="save"  action="#{patientInfoModel.UpdatePatient}">
<a4j:support event="onclick" reRender="ptable"></a4j:support>
</h:commandButton>
<h:commandButton value="Cancel" onclick="Richfaces.hideModalPanel('updatePanel')"></h:commandButton>
</h:form>

</rich:modalPanel>

<rich:modalPanel id="deletePanel" moveable="ture" minWidth="200" minHeight="500" >
<f:facet name="header">
<h1><font color="gray">Patient Information</font></h1>
</f:facet>
<f:facet name="controls">
<a4j:commandButton style="cursor:pointer"
onclick="Richfaces.hideModalPanel('deletePanel')" image="/Resources/Icons/cross.png" />
</f:facet>
<h:form>
<a4j:outputPanel ajaxRendered="true">
<p>Do you really want to delete the following Patient?</p><br>
Patient Reg Number:
<h:outputText value="#{patientInfoModel.selected.p_reg_no}"></h:outputText><br><br>



	<h:panelGrid columns="2">
	
	<h:outputText value="Patient Registraton No:"></h:outputText><h:outputText value="#{patientInfoModel.selected.p_reg_no }"></h:outputText>
	<h:outputText value="Patient Registration Date:"></</h:outputText><h:outputText value="#{patientInfoModel.selected.p_reg_date }"></h:outputText>
	<h:outputText value="Patient First Name:"></h:outputText><h:outputText value="#{patientInfoModel.selected.p_fname }"></h:outputText>
	
	<h:outputText value="Patient Middle Name:"></h:outputText><h:outputText value="#{patientInfoModel.selected.p_mname }"></h:outputText>
	<h:outputText value="Patient Last Name:"></h:outputText><h:outputText value="#{patientInfoModel.selected.p_lname }"></h:outputText>
	<h:outputText value="Patient Address:"></h:outputText><h:outputText value="#{patientInfoModel.selected.p_address }"></h:outputText>
	
	<h:outputLabel value="Patient Country:"></h:outputLabel><h:outputText value="#{patientInfoModel.selected.p_country }"></h:outputText>
	<h:outputLabel value="Patient State:"></h:outputLabel><h:outputText value="#{patientInfoModel.selected.p_state }"></h:outputText>
	<h:outputText value="Patient City:"></h:outputText><h:outputText value="#{patientInfoModel.selected.p_city }"></h:outputText>
	<h:outputLabel value="Patient Mobile No:"></h:outputLabel><h:outputText value="#{patientInfoModel.selected.p_mob_no }"></h:outputText>
	
	<h:outputLabel value="Patient Phone No"></h:outputLabel><h:outputText value="#{patientInfoModel.selected.p_phone_no }"></h:outputText>
	<h:outputLabel>Patient Email Address</h:outputLabel><h:outputText value="#{patientInfoModel.selected.p_email_address }"></h:outputText>
	<h:outputLabel>Patient Marital Status</h:outputLabel><h:outputText value="#{patientInfoModel.selected.p_marital_status }"></h:outputText>
	<h:outputLabel>Patient Religion </h:outputLabel><h:outputText value="#{patientInfoModel.selected.p_religion }"></h:outputText>
	
	<h:outputLabel>Patient Gender</h:outputLabel><h:outputText value="#{patientInfoModel.selected.p_gender }"></h:outputText>
	<h:outputText>Patient Father/Husband Name</h:outputText><h:outputText value="#{patientInfoModel.selected.p_fath_husb_name }"></h:outputText>
	<h:outputLabel>Patient Status</h:outputLabel><h:outputText value="#{patientInfoModel.selected.p_status }"></h:outputText>
	<h:outputLabel>Patient Age</h:outputLabel><h:outputText value="#{patientInfoModel.selected.p_age }"></h:outputText>
   
 </h:panelGrid>
 
	

<p>
<h:commandButton value="Yes" action="#{patientInfoModel.patientDelete}">
<a4j:support event="onclick" reRender="ptable"></a4j:support>
</h:commandButton>
<h:commandButton value="No" onclick="Richfaces.hideModalPanel('deletePanel')"></h:commandButton>
</p>
</a4j:outputPanel>
</h:form>
<rich:messages ></rich:messages>
</rich:modalPanel>

<p><h:messages styleClass="e"/></p>

</f:view>

</body>
</html>