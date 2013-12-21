<%@taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="http://richfaces.org/rich" prefix="rich" %>
<%@taglib uri="http://richfaces.org/a4j" prefix="a4j" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">	
<html>
<head>

	<link rel="stylesheet" href="../StyleFiles/patient.css" type="text/css">
	<title>Patient Registration Form</title>
</head>
<body>
<f:view>
	<rich:panel id="pForm"  header="Patient Registration Form-#{globalUtility.appTitle }">
	
	<h:form>
		<h:panelGrid columns="2" styleClass="foo" >
		  
		 <rich:panel  header="Compulsory Attributes" styleClass="ppanel">
		 
	
		    <h:panelGrid columns="2" styleClass="fo" >
		   
			<h:outputLabel value="Patient Registration No"></h:outputLabel>
		 	<h:panelGroup>
		  		 <p><h:message for="p_reg_no" styleClass="e"/></p>
		  		 <h:inputText id="p_reg_no" label="Patient Registration No" value="#{patientBean.p_reg_no}" required="true">
		  			<rich:ajaxValidator event="onblur"/>
		  		 </h:inputText>
			</h:panelGroup>	
			
		    <h:outputText value="Patient Registration Date"></h:outputText>
			<h:panelGroup>
		  		 <p><h:message id="date_errors" for="p_reg_date" styleClass="e"/></p>
		  	     <rich:calendar id="p_reg_date" label="Patient Registration Date" value="#{patientBean.p_reg_date}" datePattern="MM/dd/yyyy" required="true">
		      	 </rich:calendar>
		    </h:panelGroup>
	   		
	   		<h:outputText value="Patient First Name"></h:outputText>
		    <h:panelGroup>
		  		 <p><h:message for="p_fname" styleClass="e"/></p>
		  		 <h:inputText id="p_fname" label="Patient First Name" value="#{patientBean.p_fname}" required="true">
		   		 </h:inputText> 
		    </h:panelGroup>
		    
	   		<h:outputText value="Patient Last Name"></h:outputText>
		  	<h:panelGroup>
		  		  <p><h:message for="p_lname" styleClass="e"/></p>
		  		  <h:inputText id="p_lname" label="Patient Last Name" value="#{patientBean.p_lname}" required="true">
		   		  </h:inputText> 
		   	 </h:panelGroup>
		   	 
	   		<h:outputLabel>Patient Country</h:outputLabel>
			<h:panelGroup>
 				 <p><h:message for="p_country" styleClass="e" /></p>
				 <h:selectOneMenu label="Patient Country" id="p_country" value="#{patientBean.p_country}" required="true">
				 	<f:selectItem itemLabel="--Select Country--"/>
				 	<f:selectItems  value="#{appUtilities.countryNames }" var="cn" itemValue="#{cn.itemValue }" />
				 </h:selectOneMenu>
			</h:panelGroup>
			
			<h:outputLabel>Patient State</h:outputLabel>
			<h:panelGroup>
 			     <p><h:message for="p_state" styleClass="e" /></p>
				 <h:selectOneMenu label="Patient State" id="p_state" value="#{patientBean.p_state}"  required="true">
					 <f:selectItem itemLabel="--Select State--"/>
				 	 <f:selectItems value="#{appUtilities.stateNames }" var="sn" itemValue="#{sn.itemValue }"/>
        	    </h:selectOneMenu>
			</h:panelGroup>
			
			<h:outputLabel>Patient City</h:outputLabel>
			<h:panelGroup>
 				<p><h:message for="p_city" styleClass="e"/></p>
				<h:selectOneMenu label="Patient City" id="p_city" value="#{patientBean.p_city}" required="true">
					<f:selectItem itemLabel="--Select City--" />
					<f:selectItems value="#{appUtilities.cityNames }" var="ctn"  itemValue="#{ctn.itemValues }"  />
	     		</h:selectOneMenu>
			</h:panelGroup>
			
			<h:outputLabel>Patient Marital Status</h:outputLabel>
			<h:panelGroup>
				<h:message for="p_marital_status" styleClass="e" />
				<h:selectOneRadio label="Patient Marital Status" id="p_marital_status" value="#{patientBean.p_marital_status}" required="true">
					<f:selectItem itemLabel="Married" itemValue="Married" />
					<f:selectItem itemLabel="UnMarried" itemValue="UnMarried" />
				</h:selectOneRadio>
			</h:panelGroup>
			
			 <h:outputLabel>Patient Gender</h:outputLabel>
			<h:panelGroup>
				<h:message for="p_gender" styleClass="e"/>
				<h:selectOneRadio label="Patient Gender" id="p_gender" value="#{patientBean.p_gender}" required="true">
					<f:selectItem itemLabel="Male" itemValue="Male"/>
					<f:selectItem itemLabel="Female" itemValue="Female"/>
	  				<f:selectItem itemLabel="Other" itemValue="Other"/>
				</h:selectOneRadio>
	     	</h:panelGroup>
	     	<h:outputText value="Patient Age"></h:outputText>
		  	 <h:panelGroup>
		  	 	 <h:message  for="p_age" styleClass="e"/>
		  	 	 <h:inputText id="p_age" label="Patient Age" value="#{patientBean.p_age}" required="true">
		  	 	 <f:convertNumber  integerOnly="true" maxIntegerDigits="3"/>
		         </h:inputText> 
		   	 </h:panelGroup>
		   	 <h:outputLabel>Patient Status</h:outputLabel>
			<h:panelGroup>
				<h:message for="p_status" styleClass="e"/>
				<h:selectOneRadio label="Patient Status" id="p_status" value="#{patientBean.p_status}" required="true">
					<f:selectItem itemLabel="Indoor" itemValue="Indoor"/>
					<f:selectItem itemLabel="Outdoor" itemValue="Outdoor"/>
				</h:selectOneRadio>
			</h:panelGroup>
			
		 </h:panelGrid>	
		 
		</rich:panel>
		
		<rich:panel header="Optional Attribute">		
		  <h:panelGrid columns="2" styleClass="fo" >
		  
			<h:outputText value="Patient Address"></h:outputText>
		  	 <h:panelGroup>
		  		  <p><h:message for="p_address" styleClass="e"/></p>
		  		  <h:inputText id="p_address" label="Patient Address"  value="#{patientBean.p_address}" >
		   		  </h:inputText> 
		   	 </h:panelGroup>
			
			<h:outputLabel>Patient Mobile No</h:outputLabel>
			<h:panelGroup>
		    	<h:inputText label="Patient Mobile No" id="p_mob_no" value="#{patientBean.p_mob_no}">
				</h:inputText>
			</h:panelGroup>
			
			<h:outputText value="Patient Middle Name"></h:outputText>
		    <h:panelGroup>
		    	 <p><h:message for="p_mname" styleClass="e"/></p>
		  	 	 <h:inputText id="p_mname" label="Patient Middle Name" value="#{patientBean.p_mname}">
		   	     </h:inputText> 
		    </h:panelGroup>
			<h:outputLabel>Patient Phone No</h:outputLabel>
			<h:panelGroup>
				<h:inputText label="Patient Phone No" id="p_phone_no" value="#{patientBean.p_phone_no}">
				</h:inputText>
			</h:panelGroup>
			
	        <h:outputLabel>Patient Email Address</h:outputLabel>
			<h:panelGroup>
			    <h:message for="p_email_address"></h:message>
			    <h:inputText label="Patient Email Address" id="p_email_address" validator="#{patientBean.validateEmail }" value="#{patientBean.p_email_address}">
				</h:inputText>
			</h:panelGroup>
			
			<h:outputLabel>Patient Religion</h:outputLabel>
			<h:panelGroup>
 				<p><h:message for="p_religion" styleClass="e"/></p>
				<h:selectOneMenu label="Patient Religion" id="p_religion" value="#{patientBean.p_religion}">
					<f:selectItem itemLabel="--Select Religion--" />
					<f:selectItems  value="#{appUtilities.religionNames }" var="rn" itemValue="#{rn.itemValue }" />
				</h:selectOneMenu>
			</h:panelGroup>
			
		    <h:outputLabel>Patient Father/Husband Name</h:outputLabel>
			<h:panelGroup>
				<h:inputText label="Patient Fath/Hus Name" id="p_fath_husb_name" value="#{patientBean.p_fath_husb_name}">
				</h:inputText>
			</h:panelGroup>
			
			</h:panelGrid>
	   		
	   	  </rich:panel> 
	   		 
	    </h:panelGrid>
	   
	    	  <p><h:messages styleClass="e"/></p>
	 		  <h:commandLink id="p_register" action="#{patientBean.registerPatient }">
	 		 <h:graphicImage url="/Resources/Icons/user_add.png"></h:graphicImage>
	 		  </h:commandLink>
	 		  <h:commandButton styleClass="button" value="Clear" immediate="true" action="#{patientBean.ClearContent}">
			  	<a4j:support event="onclick" reRender="pForm"></a4j:support>
			  </h:commandButton>
	 		  <h:commandButton  title="Click to cancle registration" value="Cancel" action="MainAccount" immediate="true"/>	 

     </h:form>
   </rich:panel>
  
<rich:modalPanel id="confirmPanel" label="Confirmation of Information" shadowDepth="20" shadowOpacity="5" minHeight="500" minWidth="300" moveable="ture">
<f:facet name="header" >
<h1><font color="gray">Confirmation</font></h1>
</f:facet>
<f:facet name="controls">
<h:outputLabel style="cursor:pointer" onclick="Richfaces.hideModalPanel('confirmPanel')" value="X" />
</f:facet>
<h:form>
	<h:panelGrid columns="2">
	
	<h:outputText value="Patient Registraton No:"></h:outputText><h:outputText value="#{patientBean.p_reg_no }"></h:outputText>
	<h:outputText value="Patient Registration Date:"></</h:outputText><h:outputText value="#{patientBean.p_reg_date }"></h:outputText>
	<h:outputText value="Patient First Name:"></h:outputText><h:outputText value="#{patientBean.p_fname }"></h:outputText>
	
	<h:outputText value="Patient Middle Name:"></h:outputText><h:outputText value="#{patientBean.p_mname }"></h:outputText>
	<h:outputText value="Patient Last Name:"></h:outputText><h:outputText value="#{patientBean.p_lname }"></h:outputText>
	<h:outputText value="Patient Address:"></h:outputText><h:outputText value="#{patientBean.p_address }"></h:outputText>
	
	<h:outputLabel value="Patient Country:"></h:outputLabel><h:outputText value="#{patientBean.p_country }"></h:outputText>
	<h:outputLabel value="Patient State:"></h:outputLabel><h:outputText value="#{patientBean.p_state }"></h:outputText>
	<h:outputText value="Patient City:"></h:outputText><h:outputText value="#{patientBean.p_city }"></h:outputText>
	<h:outputLabel value="Patient Mobile No:"></h:outputLabel><h:outputText value="#{patientBean.p_mob_no }"></h:outputText>
	
	<h:outputLabel value="Patient Phone No"></h:outputLabel><h:outputText value="#{patientBean.p_phone_no }"></h:outputText>
	<h:outputLabel>Patient Email Address</h:outputLabel><h:outputText value="#{patientBean.p_email_address }"></h:outputText>
	<h:outputLabel>Patient Marital Status</h:outputLabel><h:outputText value="#{patientBean.p_marital_status }"></h:outputText>
	<h:outputLabel>Patient Religion </h:outputLabel><h:outputText value="#{patientBean.p_religion }"></h:outputText>
	
	<h:outputLabel>Patient Gender</h:outputLabel><h:outputText value="#{patientBean.p_gender }"></h:outputText>
	<h:outputText>Patient Father/Husband Name</h:outputText><h:outputText value="#{patientBean.p_fath_husb_name }"></h:outputText>
	<h:outputLabel>Patient Status</h:outputLabel><h:outputText value="#{patientBean.p_status }"></h:outputText>
	<h:outputLabel>Patient Age</h:outputLabel><h:outputText value="#{patientBean.p_age }"></h:outputText>
   
 </h:panelGrid>
 
	<h:commandButton value="Edit" onclick="Richfaces.hideModalPanel('confirmPanel')"></h:commandButton>
	<h:commandButton value="Confirm" action="#{patientBean.registerPatient}"></h:commandButton>
</h:form> 
<rich:messages ></rich:messages>
</rich:modalPanel> 
	   
   </f:view>
 </body>
</html>