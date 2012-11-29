<%@ include file="/WEB-INF/jsp/includes.jsp" %>
<%@ include file="/WEB-INF/jsp/header.jsp" %>

<h2>Pets:</h2>

<table>
  <thead>
    <th>Name</th>
    <th>Type</th>
    <th>Birth Date</th>
    <th>Number of Visits</th> 
    <th>Owner</th>
  </thead>
  <c:forEach var="pet" items="${pets}">
    <tr>
      <td>${pet.name}</td>
      <td>${pet.type.name}</td>      
      <td>${pet.birthDate}</td>
      <td>${fn:length(pet.visits)}</td>
      <td>
          <spring:url value="../owners/{ownerId}" var="ownerUrl">
              <spring:param name="ownerId" value="${pet.owner.id}"/>
          </spring:url>
          <a href="${fn:escapeXml(ownerUrl)}">${pet.owner.firstName} ${pet.owner.lastName}</a>
      </td>
    </tr>
  </c:forEach>
</table>

<%@ include file="/WEB-INF/jsp/footer.jsp" %>
