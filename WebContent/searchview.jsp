<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="style.css" rel="stylesheet" type="text/css"/>
<title>Search Results</title>
</head>
<body>
	 <table width="700px" align="center"
               style="border:1px solid #000000;" align="center">
            
            <%@ page import="java.util.List,hibernatebean.*" %>
      <h3 align="center"> Search Results </h3>
      <%
         List<Patient> patientsList = (List<Patient>) request.getAttribute("patientsList");
       %>
       
      <% if(patientsList.size() ==0){
       %>
    	  <h4 align="center"> Sorry there were no such records <h4>
      <%
      	}
      else if(patientsList.size() ==1){
       %>  
       <h4 align="center"> We found <%= patientsList.size() %> patient</h4>
      <%
      }
      else{
      %>
      	<h4 align="center"> We found <%= patientsList.size() %> patients</h4>
      <% 
      }
      %>
      <%-- retrieve the searched patient --%>
      <table border="2" align="center">
         <tr>
         <%if(patientsList.size()>0){
        	 %>
         
            <td style="font-weight: bold;"> FIRST NAME</td> <td style="font-weight: bold;">LAST NAME </td> <td style="font-weight: bold;"> DOB </td> 
           <td style="font-weight: bold;"> GENDER </td> <td style="font-weight: bold;">PHONE NUMBER</td> <td style="font-weight: bold;"> FREE TEXT</td></span>
         </tr>
         <%
         }
         %>
          <%
           for(int i=0;i<patientsList.size();i++)
           {
           Patient patient = patientsList.get(i) ;    
          %>
         <tr> 
           <td><%= patient.getFirstName() %></td>
           <td><%= patient.getLastName() %></td>
           <td><%= patient.getDob() %></td>
           <td><%= patient.getGender() %></td>
           <td><%= patient.getPhoneNumber() %></td>
           <td><%= patient.getFreeTextInfo() %></td>
         </tr>
         <%     
         }
         %>
        </table>
</body>
</html>