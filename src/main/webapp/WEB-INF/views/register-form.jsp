<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<style>
	.error{
		color: red;
	}
</style>
<h1>Registration Form </h1>

<form:form action="processForm" modelAttribute="student"  method="post" >

	First Name: <form:input path="firstName" />
	
	<br /><br />
	Last Name: (*) <form:input path="lastName" />
	<form:errors path="lastName" cssClass="error" />
	
	<br /><br />
	
	<form:select path="country" >
		<form:option value="Brazil" label="Brazil"></form:option>
		<form:option value="German" label="German"></form:option>
		<form:option value="Italia" label="Italia"></form:option>
		<form:option value="France" label="France"></form:option>
		<form:option value="India" label="India"></form:option>
	</form:select>

<br /><br />

	Java <form:radiobutton value="Java" path="language" ></form:radiobutton>
		C# <form:radiobutton value="C#" path="language" ></form:radiobutton>
			PHP <form:radiobutton value="PHP" path="language" ></form:radiobutton>
				Ruby <form:radiobutton value="Ruby" path="language" ></form:radiobutton>
	<br /><br />

	Linux <form:checkbox path="operatingSystem" value="Linux"></form:checkbox>
	Windos <form:checkbox path="operatingSystem" value="Windos"></form:checkbox>	
	Mac OS <form:checkbox path="operatingSystem" value="Mac OS"></form:checkbox>	

	<br /><br />
	
	<input type="submit" value="submit" />
	
</form:form>

<br /><br />

<a href="/">Back To Home Page</a>


