<%@ include file="/WEB-INF/jsp/includes.jsp" %>
<%@ include file="/WEB-INF/jsp/header.jsp" %>

<h2>Pet Clinic Mascot</h2>

Our mascot's name is ${mascot.name} and he was born on ${mascot.birthDate}. 
He is the cutest ${mascot.type} ever! 
<p/>
Listen to what he has to <a href="speak?sound=raar">say</a>!

<%@ include file="/WEB-INF/jsp/footer.jsp" %>
