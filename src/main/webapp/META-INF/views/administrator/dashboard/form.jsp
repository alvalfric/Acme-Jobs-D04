<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:form>
	<acme:form-integer code="administrator.dashboard.form.label.announcements" path="totalNumberOfAnnouncements" readonly="true" />
	<acme:form-integer code="administrator.dashboard.form.label.companyRecords" path="totalNumberOfCompanyRecords" readonly="true" />
	<acme:form-integer code="administrator.dashboard.form.label.investorRecords" path="totalNumberOfInvestorRecords" readonly="true" />
	<acme:form-integer code="administrator.dashboard.form.label.minActiveRequests" path="mininumRewardOfActiveRequests" readonly="true" />
	<acme:form-integer code="administrator.dashboard.form.label.maxActiveRequests" path="maximumRewardOfActiveRequests" readonly="true" />
	<acme:form-integer code="administrator.dashboard.form.label.avgActiveRequests" path="averageRewardOfActiveRequests" readonly="true" />
	<acme:form-integer code="administrator.dashboard.form.label.minOffers" path="mininumRewardOfActiveOffers" readonly="true" />
	<acme:form-integer code="administrator.dashboard.form.label.maxOffers" path="maximumRewardOfActiveOffers" readonly="true" />
	<acme:form-integer code="administrator.dashboard.form.label.avgOffers" path="averageRewardOfActiveOffers" readonly="true" />
	<acme:form-integer code="administrator.dashboard.form.label.avgJobsEmp" path="averageNumberOfJobsPerEmployer" readonly="true" />
	<acme:form-integer code="administrator.dashboard.form.label.avgAppsEmp" path="averageNumberOfApplicationsPerEmployer" readonly="true" />
	<acme:form-integer code="administrator.dashboard.form.label.avgAppsWor" path="averageNumberOfApplicationsPerWorker" readonly="true" />
</acme:form>
<b><acme:message code="administrator.dashboard.chart.label.companyInvestor"/></b>
<canvas id="myChart" width="250" height="50"></canvas>
<b><acme:message code="administrator.dashboard.chart.label.job"/></b>
<canvas id="myChart2Job" width="250" height="50"></canvas>
<b><acme:message code="administrator.dashboard.chart.label.application"/></b>
<canvas id="myChart2App" width="250" height="50"></canvas>
<script>
	var ctx = document.getElementById("myChart").getContext('2d');
	var myChart = new Chart(ctx, {
		type : 'bar',
		data : {
			labels : [
				"<jstl:out value="${chartCompanyInvestor.get(0).get(0)}" escapeXml="false"/>"
				<jstl:forEach var="duty" items="${chartCompanyInvestor.get(0)}" begin="1">
					,"<jstl:out value="${duty}" escapeXml="false"/>"
				</jstl:forEach>
			],
			datasets : [
				{
					data : [
						<jstl:out value="${Integer.parseInt(chartCompanyInvestor.get(1).get(0))}" escapeXml="false"/>
						<jstl:forEach var="duty" items="${chartCompanyInvestor.get(1)}" begin="1">
							,<jstl:out value="${Integer.parseInt(duty)}" escapeXml="false"/>
						</jstl:forEach>
					],
					label: 'Company Records/Registros de Compa�ias',
					backgroundColor : 'rgba(255, 99, 132, 0.2)',
					borderColor : 'rgba(255,99,132,1)',
					borderWidth : 1
				},
				{
					data : [
						<jstl:out value="${Integer.parseInt(chartCompanyInvestor.get(2).get(0))}" escapeXml="false"/>
						<jstl:forEach var="duty" items="${chartCompanyInvestor.get(2)}" begin="1">
							,<jstl:out value="${Integer.parseInt(duty)}" escapeXml="false"/>
						</jstl:forEach>
					],
					label: 'Investor Records/Registros de Inversores',
					backgroundColor : 'rgba(54, 162, 235, 0.2)',
					borderColor : 'rgba(54, 162, 235, 1)',
					borderWidth : 1
				}
			]
		},
		options : {
			scales : {
				yAxes : [
					{
						ticks : {
							suggestedMin : 0.0,
							suggestedMax : 1.0
						}
					}
				]
			},
			legend : {
				display : true
			}
		}
	});
	
	var ctx2Job = document.getElementById("myChart2Job").getContext('2d');
	var myChart2Job = new Chart(ctx2Job, {
		type : 'pie',
		data : {
			labels : [
				'Published (Final Mode)/Publicado (Modo Final)', 'Draft (Non Final Mode)/Borrador (Modo No Final)'
			],
			datasets : [
				{
					data : [
						<jstl:out value="${ratioOfYesFinalModeJobs}" escapeXml="false"/>,
						<jstl:out value="${ratioOfNoFinalModeJobs}" escapeXml="false"/>
					],
					backgroundColor : ['rgba(54, 162, 235, 0.6)', 'rgba(255, 99, 132, 0.6)'],
					borderColor : ['rgba(54, 162, 235, 1)', 'rgba(255,99,132,1)'],
					borderWidth : [1, 1]
				}
			]
		},
		options : {
			legend : {
				display : true
			}
		}
	});
	
	var ctx2App = document.getElementById("myChart2App").getContext('2d');
	var myChart2App = new Chart(ctx2App, {
		type : 'pie',
		data : {
			labels : [
				'PENDING/PENDIENTE', 'REJECTED/RECHAZADA', 'ACCEPTED/ACEPTADA'
			],
			datasets : [
				{
					data : [
						<jstl:out value="${ratioOfPendingApplications}" escapeXml="false"/>,
						<jstl:out value="${ratioOfRejectedApplications}" escapeXml="false"/>,
						<jstl:out value="${ratioOfAcceptedApplications}" escapeXml="false"/>
					],
					backgroundColor : ['rgba(234, 255, 10, 0.6)', 'rgba(255, 99, 132, 0.6)', 'rgba(20, 255, 67, 0.6)'],
					borderColor : ['rgba(234, 255, 10, 1)', 'rgba(255,99,132,1)', 'rgba(20, 255, 67, 1)'],
					borderWidth : [1, 1, 1]
				}
			]
		},
		options : {
			legend : {
				display : true
			}
		}
	});
</script>