<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
	
	<div class="container">
		<table class="table table-striped">
			<caption>System Performance <a href="/metrics" > (back to metrics) </a></caption>
			<thead>
				<tr>
					<th>Id</th>
					<th>URI</th>
					<th>Method</th>
					<th>Request Time</th>
					<th>Completion Time (in ms)</th>
					<th>Response Size (in bytes)</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${requestLogs}" var="requestLog">
					<tr>
						<td>${requestLog.id}</td>
						<td>${requestLog.uri}</td>
						<td>${requestLog.httpMethod}</td>
						<td>${requestLog.requestedTime}</td>
						<td>${requestLog.requestCompletionTime}</td>
						<td>${requestLog.contentSize}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
<%@ include file="common/footer.jspf" %>