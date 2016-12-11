<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="style.css" rel="stylesheet" type="text/css"/>
<title>Display Patients</title>
</head>
<body>
	<br/><br/>
    <form method="post" name="frm" action="Search">
      <table border="0" width="300" align="left">
        <tr><td colspan=2 style="font-size:12pt;" align="center">
        </td></tr>Search Patient: <input  type="text" name="searchName" id="fid">       
        
        <input  type="submit" name="submit" value="Search">
      </table>
    </form>
    <%-- retrieve all patients to display --%>
	<%@ page import="java.util.List,hibernatebean.*" %>
      <h3 align="center"> Patient Details </h3>
      <%
         List<Patient> patients = (List<Patient>) request.getAttribute("patients");
       %>
      <h4 align="center"> Total Number of patients are <%= patients.size() %> </h4>
      <table border="2" align="center">
         <tr>
           <td style="font-weight: bold;"> FIRST NAME</td> <td style="font-weight: bold;">LAST NAME </td> <td style="font-weight: bold;"> DOB </td> 
           <td style="font-weight: bold;"> GENDER </td> <td style="font-weight: bold;">PHONE NUMBER</td> <td style="font-weight: bold;"> FREE TEXT</td></span>
         </tr>
          <%
           for(int i=0;i<patients.size();i++)
           {
           Patient patient = patients.get(i) ;    
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