<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
	
	<div class="container">
		<table class="table table-striped">
			<caption>System Performance</caption>
			<thead>
				<tr>
					<th>URI</th>
					<th>Method</th>
					<th>Request Max(in ms)</th>
					<th>Request Min(in ms)</th>
					<th>Request Avg(in ms)</th>
					<th>Response Size Max (in bytes)</th>
					<th>Response Size Min (in bytes)</th>
					<th>Response Size Avg (in bytes)</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${aggregateResponses}" var="aggregateResponse">
					<tr>
						<td>
							<a href="/uri_metric?uri=${aggregateResponse.uri}">${aggregateResponse.uri}</a>
						</td>
						<td>${aggregateResponse.httpMethod}</td>
						<td>${aggregateResponse.requestTimeMax}</td>
						<td>${aggregateResponse.requestTimeMin}</td>
						<td>${aggregateResponse.requestTimeAvg}</td>
						<td>${aggregateResponse.responseSizeMax}</td>
						<td>${aggregateResponse.responseSizeMin}</td>
						<td>${aggregateResponse.responseSizeAvg}</td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
<%@ include file="common/footer.jspf" %>