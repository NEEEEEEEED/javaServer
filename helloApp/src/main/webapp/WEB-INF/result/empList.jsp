<%@page import="co.yedam.emp.vo.EmpVO"%>
<%@page import="java.util.List"%>
<%@page import="co.yedam.emp.service.EmpServiceImpl"%>
<%@page import="co.yedam.emp.service.EmpService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../includes/header.jsp"></jsp:include>
	<%
	EmpService service = new EmpServiceImpl();
	List<EmpVO> list = service.empList();
	%>
	<h3>사원목록(empControl.do의 결과 페이지).</h3>
	<table border="1" class="table">
		<thead>
			<tr>
				<th>사원번호</th>
				<th>FirstName</th>
				<th>LastName</th>
				<th>email</th>
				<th>job</th>
				<th>hireDate</th>
				
			</tr>
		</thead>
		<tbody>
			<%
			for (EmpVO emp : list) {
			%>
			<tr>
				<td><a href="empDetail.do?eid=<%=emp.getEmployeeId()%>"><%=emp.getEmployeeId()%></a></td>
				<td><%=emp.getFirstName()%></td>
				<td><%=emp.getLastName()%></td>
				<td><%=emp.getEmail()%></td>
				<td><%=emp.getJobId()%></td>
				<td><%=emp.getHireDate()%></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>

<jsp:include page="../includes/footer.jsp"></jsp:include>