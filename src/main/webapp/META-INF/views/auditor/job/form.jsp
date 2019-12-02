<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:form>
	<acme:form-textbox code="auditor.job.form.label.reference" path="reference"/>
	<acme:form-textbox code="auditor.job.form.label.title" path="title"/>
	<acme:form-textbox code="auditor.job.form.label.deadline" path="deadline"/>
	<acme:form-textbox code="auditor.job.form.label.salary" path="salary"/>
	<acme:form-textbox code="auditor.job.form.label.moreInfo" path="moreInfo"/>
	<acme:form-textarea code="auditor.job.form.label.description" path="descriptor.description"/>
	
	<acme:form-return code="auditor.job.form.button.return"/>
</acme:form>
