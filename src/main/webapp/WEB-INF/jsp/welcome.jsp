<%@ include file="/WEB-INF/jsp/includes.jsp" %>
<%@ include file="/WEB-INF/jsp/header.jsp" %>

<img src="<spring:url value="/static/images/pets.png" htmlEscape="true" />" align="right" style="position:relative;right:30px;">
<h2><fmt:message key="welcome"/></h2>

<ul>
  <li><a href="<spring:url value="/owners/search" htmlEscape="true" />">Find owner</a></li>
  <li><a href="<spring:url value="/vets" htmlEscape="true" />">Display all veterinarians</a></li>
  <li><a href="<spring:url value="/grails/pet/" htmlEscape="true" />">Display all pets</a></li>
  <li><a href="<spring:url value="/grails/pet/types" htmlEscape="true" />">Display all pet types</a></li>
  <li><a href="<spring:url value="/grails/pet/mascot" htmlEscape="true" />">Our mascot</a></li>
  <li><a href="<spring:url value="/grails/pet/hotel-status" htmlEscape="true" />">Pet hotel status</a></li>    
  <li><a href="<spring:url value="/grails/shots" htmlEscape="true" />">Shot List</a></li>
  <li><a href="<spring:url value="/grails/try-luck" htmlEscape="true" />">Fish provided luck</a></li>
  <li><a href="<spring:url value="/grails/vets-old" htmlEscape="true" />">Display all vets (legacy URL)</a></li>    
  <li><a href="<spring:url value="/static/html/tutorial.html" htmlEscape="true" />">Tutorial</a></li>
</ul>

<p>&nbsp;</p>
<p>&nbsp;</p>

<%@ include file="/WEB-INF/jsp/footer.jsp" %>
