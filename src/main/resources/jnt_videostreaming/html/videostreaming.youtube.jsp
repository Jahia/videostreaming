<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="utility" uri="http://www.jahia.org/tags/utilityLib" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>

<c:choose>
    <c:when test="${not empty currentNode.properties.html5Player && currentNode.properties.html5Player.boolean}">
      <c:set var="html5" value="?html5=1"/>
  </c:when>
    <c:otherwise>
      <c:set var="html5" value=""/>
    </c:otherwise>
</c:choose>
        <iframe width="${currentNode.properties.width.long}" height="${currentNode.properties.height.long}"
                src="//www.youtube.com/embed/${currentNode.properties.identifier.string}${html5}"
                ${currentNode.properties.allowfullscreen.boolean ? " allowfullscreen" : ''}></iframe>
