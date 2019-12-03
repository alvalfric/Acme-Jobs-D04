<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<style>
table {
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #e9ecef;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #e9ecef;
}
</style>

<acme:form>
	<acme:form-textbox code="employer.job.form.label.reference" path="reference"/>
	<acme:form-textbox code="employer.job.form.label.title" path="title"/>
	<acme:form-textbox code="employer.job.form.label.deadline" path="deadline"/>
	<acme:form-textbox code="employer.job.form.label.salary" path="salary"/>
	<acme:form-textbox code="employer.job.form.label.moreInfo" path="moreInfo"/>
	<acme:form-textarea code="employer.job.form.label.description" path="descriptor.description"/>
	<acme:form-textbox code="employer.job.form.label.auditor-record" path="id"/>
	<b><acme:message code="employer.job.form.label.duty"/></b>
	<table>
		<tr>
			<th><acme:message code="employer.job.form.label.duty.title"/></th>
			<th><acme:message code="employer.job.form.label.duty.description"/></th>
			<th><acme:message code="employer.job.form.label.duty.percentage"/></th>
		</tr>
		<jstl:forEach var="duty" items="${descriptor.duties}">
		<tr>
			<td>${duty.title}</td>
			<td>${duty.description}</td>
			<td>${duty.percentage}</td>
		</tr>
		</jstl:forEach>
	</table>
	<br>

	<acme:form-return code="employer.job.form.button.return"/>
</acme:form>

<input type="button"  onclick="location.href='/acme-jobs/employer/auditrecord/list-mine?jobId=${id}'" value="Ver Audit Records" >
