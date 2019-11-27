<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<!-- 

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

 -->

<canvas id="myChart" width="230" height="90"></canvas>
<canvas id="myChart2" width="230" height="90"></canvas>
<script>
	var ctx = document.getElementById("myChart").getContext('2d');
	var myChart = new Chart(ctx, {
		type : 'bar',
		data : {
			labels : [],
			datasets : [
				{
					label : 'Announcements',
					data : [ <jstl:out value="${totalNumberOfAnnouncements}" escapeXml="false"/> ],
					backgroundColor : ['rgba(100, 50, 255, 0.2)'],
					borderColor : [ 'rgba(100,50,255,1)'],
					borderWidth : 1
				},
				{
					label : 'Company Records',
					data : [ <jstl:out value="${totalNumberOfCompanyRecords}" escapeXml="false"/> ],
					backgroundColor : ['rgba(255, 255, 132, 0.2)'],
					borderColor : [ 'rgba(255,255,132,1)'],
					borderWidth : 1
				},
				{
					label : 'Investors Records',
					data : [ <jstl:out value="${totalNumberOfInvestorRecords}" escapeXml="false"/> ],
					backgroundColor : ['rgba(255,100, 132, 0.2)'],
					borderColor : [ 'rgba(255,100,132,1)'],
					borderWidth : 1
				}
			]
		},
		options : { scales : { yAxes : [ { ticks : { beginAtZero : true } } ] } }
	});
	
	
	var ctx = document.getElementById("myChart2").getContext('2d');
	var myChart2 = new Chart(ctx, {
		type : 'bar',
		data : {
			labels : [],
			datasets : [
				{
					label : 'Mininum Reward Of Active Requests',
					data : [ <jstl:out value="${mininumRewardOfActiveRequests}" escapeXml="false"/> ],
					backgroundColor : ['rgba(255, 200, 132, 0.2)'],
					borderColor : [ 'rgba(255,200,132,1)'],
					borderWidth : 1
				},
				{
					label : 'Maximum Reward Of Active Requests',
					data : [ <jstl:out value="${maximumRewardOfActiveRequests}" escapeXml="false"/> ],
					backgroundColor : ['rgba(255, 220, 150, 0.2)'],
					borderColor : [ 'rgba(255,220,150,1)'],
					borderWidth : 1
				},
				{
					label : 'Average Reward Of Active Requests',
					data : [ <jstl:out value="${averageRewardOfActiveRequests}" escapeXml="false"/> ],
					backgroundColor : ['rgba(200, 220, 150, 0.2)'],
					borderColor : [ 'rgba(200,220,150,1)'],
					borderWidth : 1
				},
				{
					label : 'Mininum Reward Of Active Offers',
					data : [ <jstl:out value="${mininumRewardOfActiveOffers}" escapeXml="false"/> ],
					backgroundColor : ['rgba(255, 200, 100, 0.2)'],
					borderColor : [ 'rgba(255,200,100,1)'],
					borderWidth : 1
				},
				{
					label : 'Maximum Reward Of Active Offers',
					data : [ <jstl:out value="${maximumRewardOfActiveOffers}" escapeXml="false"/> ],
					backgroundColor : ['rgba(255, 220, 200, 0.2)'],
					borderColor : [ 'rgba(255,220,200,1)'],
					borderWidth : 1
				},
				{
					label : 'Average Reward Of Active Offers',
					data : [ <jstl:out value="${averageRewardOfActiveOffers}" escapeXml="false"/> ],
					backgroundColor : ['rgba(200, 220,255, 0.2)'],
					borderColor : [ 'rgba(200,220,255,1)'],
					borderWidth : 1
				}
								
			]
		},
		options : { scales : { yAxes : [ { ticks : { beginAtZero : true } } ] } }
	});
</script>