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
</acme:form>

<canvas id="myChart" width="250" height="50"></canvas>
<script>
	var ctx = document.getElementById("myChart").getContext('2d');
	var myChart = new Chart(ctx, {
		type : 'bar',
		data : {
			labels : [
				"Prueba", "Prueba", "Prueba"
			],
			datasets : [
				{
					label : '',
					data : [
						<jstl:out value="${Integer.parseInt(totalNumberOfCompanyRecordsGroupedBySector[0][1])}" escapeXml="false"/>
						<jstl:forEach var="duty" items="${totalNumberOfCompanyRecordsGroupedBySector}" begin="1">
							,<jstl:out value="${Integer.parseInt(duty[1])}" escapeXml="false"/>
						</jstl:forEach>
					],
					backgroundColor : [
							'rgba(255, 99, 132, 0.2)',
							'rgba(255, 99, 132, 0.2)',
							'rgba(255, 99, 132, 0.2)'
					],
					borderColor : [
							'rgba(255,99,132,1)',
							'rgba(255,99,132,1)',
							'rgba(255,99,132,1)'
					],
					borderWidth : 1
				}
			]
		},
		options : {
			scales : {
				yAxes : [
					{
						ticks : {
							beginAtZero : true
						}
					}
				]
			}
		}
	});
</script>