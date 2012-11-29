<%@ include file="/WEB-INF/jsp/includes.jsp" %>
<%@ include file="/WEB-INF/jsp/header.jsp" %>

<img src="<spring:url value="/static/images/pets.png" htmlEscape="true" />" align="right" style="position:relative;right:30px;">
<h2><fmt:message key="welcome"/></h2>

<ul>
  <li><a href="<spring:url value="/owners/search" htmlEscape="true" />">Find owner</a></li>
  <li><a href="<spring:url value="/vets" htmlEscape="true" />">Display all veterinarians</a></li>
  <li><a href="<spring:url value="/pet/" htmlEscape="true" />">Display all pets</a></li>
  <li><a href="<spring:url value="/pet/types" htmlEscape="true" />">Display all pet types</a></li>
  <li><a href="<spring:url value="/pet/show-mascot" htmlEscape="true" />">Our mascot</a></li>
  <li><a href="<spring:url value="/pet/resource" htmlEscape="true" />">Mascot as XML</a></li>
  <li><a href="<spring:url value="/pet/hotel-status" htmlEscape="true" />">Pet hotel status</a></li>
  <li><a href="<spring:url value="/pet/lonely-place" htmlEscape="true" />">Pet's lonely place</a></li>      
  <li><a href="<spring:url value="/shots" htmlEscape="true" />">Shot List</a></li>
  <li><a href="<spring:url value="/pet/die" htmlEscape="true" />">Permanent sleep</a></li>      
  <li><a href="<spring:url value="/try-luck" htmlEscape="true" />">Fish provided luck</a></li>
  <li><a href="<spring:url value="/vets-old" htmlEscape="true" />">Display all vets (legacy URL)</a></li>
  <li><a href="<spring:url value="/fish/feed/69" htmlEscape="true" />">Feed a valid fish</a></li>      
  <li><a href="<spring:url value="/fish/feed/goldie" htmlEscape="true" />">Feed an invalid fish (expect 404)</a></li>
  <li><a href="<spring:url value="/move" htmlEscape="true" />">Move!</a></li>
  <li><a href="<spring:url value="/fish/enemy" htmlEscape="true" />">Fish's enemy</a></li>
  <li><a href="<spring:url value="/fish/act" htmlEscape="true" />">The natural action of a fish</a></li>
  <li><a href="<spring:url value="/pet/render-status" htmlEscape="true" />">Bad status (expect 503)</a></li>
  <li><a href="<spring:url value="/static/html/tutorial.html" htmlEscape="true" />">Tutorial</a></li>
</ul>

<p>&nbsp;</p>
<p>&nbsp;</p>

<%@ include file="/WEB-INF/jsp/footer.jsp" %>
