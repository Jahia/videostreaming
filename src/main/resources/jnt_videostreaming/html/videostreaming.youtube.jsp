<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="utility" uri="http://www.jahia.org/tags/utilityLib" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>

<c:choose>
    <c:when test="${not empty currentNode.properties.html5Player && currentNode.properties.html5Player.boolean}">
        <iframe width="${currentNode.properties.width.long}" height="${currentNode.properties.height.long}"
                src="//www.youtube.com/embed/${currentNode.properties.identifier.string}"
                ${currentNode.properties.allowfullscreen.boolean ? " allowfullscreen" : ''}></iframe>
    </c:when>
    <c:otherwise>
        <object width="${currentNode.properties.width.long}" height="${currentNode.properties.height.long}" type="application/x-shockwave-flash">
            <param name="allowFullScreen" value="${currentNode.properties.allowfullscreen.boolean}"/>
            <param name="allowscriptaccess" value="always"/>
            <param name="movie" value="http://www.youtube.com/v/${currentNode.properties.identifier.string}"/>
            <embed src="http://www.youtube.com/v/${currentNode.properties.identifier.string}" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="${currentNode.properties.allowfullscreen.boolean}" width="${currentNode.properties.width.long}" height="${currentNode.properties.height.long}"/>
        </object>
    </c:otherwise>
</c:choose>