<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
 <head>
  <title>Document</title>
 </head>
 <body>
  <h2>WELCOME TO EMPLOYEE PAGE</h2>
  <p>
  	<!--Data is : ${eid},${ename},${esal}-->
  	<!--Data is : ${ob} //toString  	<br/>
  	${ob.empId}, ${ob.empName} , ${ob.empDept} //calls get method-->
  	
  	<!-- Data : ${list} -->
  	
  	<table border="1">
  		<tr>
  			<th>ID</th>
  			<th>NAME</th>
  			<th>DEPT</th>
  		</tr>
  		<c:forEach items="${list}" var="ob">
  			<tr>
  				<td>${ob.empId} </td>
  				<td>${ob.empName} </td>
  				<td>${ob.empDept} </td>
  			</tr>
  		</c:forEach>
  	</table>
  </p>
 </body>
</html>
