<%@ include file="/WEB-INF/jsp/includes.jsp" %>
<%@ include file="/WEB-INF/jsp/header.jsp" %>

<h2>Pet Types:</h2>

<table>
  <thead>
    <th>Name</th>
  </thead>
  <c:forEach var="petType" items="${petTypes}">
    <tr>
      <td>${petType.name}</td>
    </tr>
  </c:forEach>
</table>

<%@ include file="/WEB-INF/jsp/footer.jsp" %>
