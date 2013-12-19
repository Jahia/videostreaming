<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="utility" uri="http://www.jahia.org/tags/utilityLib" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>

<c:choose>
    <c:when test="${not empty currentNode.properties.html5Player && currentNode.properties.html5Player.boolean}">
        <iframe src="http://www.wat.tv/embedframe/${currentNode.properties.identifier.string}?autoStart=0"
                width="${currentNode.properties.width.long}" height="${currentNode.properties.height.long}"></iframe>
    </c:when>
    <c:otherwise>
        <object type="application/x-shockwave-flash" data="http://www.wat.tv/swf2/${currentNode.properties.identifier.string}" width="${currentNode.properties.width.long}" height="${currentNode.properties.height.long}">
            <param name="allowFullScreen" value="${currentNode.properties.allowfullscreen.boolean}" />
            <param name="allowScriptAccess" value="always" />
            <param name="movie" value="http://www.wat.tv/swf2/${currentNode.properties.identifier.string}" />
            <embed width="${currentNode.properties.width.long}" height="${currentNode.properties.height.long}" src="http://www.wat.tv/swf2/${currentNode.properties.identifier.string}"  allowscriptaccess="always" allowfullscreen="${currentNode.properties.allowfullscreen.boolean}" />
        </object>
    </c:otherwise>
</c:choose>