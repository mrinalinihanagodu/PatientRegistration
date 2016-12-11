<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="style.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript">
	function validate()
	{	
		var valid =true;
		var firstName = document.getElementById("firstName");
		var lastName = document.getElementById("lastName");
		var dob = document.getElementById("dob");
		var pattern1 = /^([0-9]|1[0-9]|2[0-9]|3[01])\/([1-9]|1[0-2])\/([0-9]{4})$/;
		var phone = document.getElementById("phoneNumber");
		var pattern2 = /^[1-9]\d{2}[2-9]\d{2}\d{4}$/;
    
	if(firstName.value == null || firstName.value == ""){
	alert("Please enter the First Name");
		valid= false;
	}
	
	if(firstName.value)

	if(lastName.value == null || lastName.value == ""){
		alert("Please enter the Last Name\n");
		valid= false;
	}

	if (dob.value == null || dob.value == "" || !pattern1.test(dob.value)) {
        alert("Please enter a valid date of birth\n");
        valid= false;
    }

	if(phone.value == null || phone.value == "" || !pattern2.test(phone.value) ){
		alert("Please enter a valid phone number");
		valid= false;
	}
	return valid;
};
</script>
<title>Registration Form</title>
</head>
<body>
	<h1 align="left" >Registration Form</h1><br/><br/>
    <form action="register" method="post" name="registerForm" onsubmit="return validate();">
        <table >
            <tr>
                <td>First Name :</td>
                <td><input type="text" name="firstName" size="30" id="firstName"/></td>
            </tr>
            <tr>
                <td>Last Name :</td>
                <td><input type="text" name="lastName" size="30" id="lastName"/></td>
            </tr>
 
            <tr>
                <td>DOB [dd/mm/yyyy] :</td>
                <td><input type="text" name="dob" size="30" id="dob"/></td>
            </tr>
            <tr>
                <td>Gender :</td>
                <td>
                	<select name="gender" >
                        <option value="M">M</option>
                        <option value="F">F</option>
                    </select>
               </td>
            </tr>
            <tr>
                <td>Phone :</td>
                <td><input type="text" name="phoneNumber" size="30" id="phoneNumber"/></td>
            </tr>
            <tr>
                <td>Free Text Information :</td>
                <td><input type="text" name="freeTextInfo" size="30" /></td>
            </tr>
        </table>
        <br/>
        <input type="submit" value="Submit" />
    </form>
</body>
</html>