<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="utility" uri="http://www.jahia.org/tags/utilityLib" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>

<c:choose>
    <c:when test="${not empty currentNode.properties.html5Player && currentNode.properties.html5Player.boolean}">
        <iframe src="http://www.dailymotion.com/embed/video/${currentNode.properties.identifier.string}"
                width="${currentNode.properties.width.long}"
                height="${currentNode.properties.height.long}"
                ${currentNode.properties.allowfullscreen.boolean ? " allowfullscreen" : ''}></iframe>
    </c:when>
    <c:otherwise>
        <object width="${currentNode.properties.width.long}" height="${currentNode.properties.height.long}" type="application/x-shockwave-flash">
            <param name="allowFullScreen" value="${currentNode.properties.allowfullscreen.boolean}"/>
            <param name="allowScriptAccess" value="always"/>
            <param name="movie" value="http://www.dailymotion.com/swf/video/${currentNode.properties.identifier.string}"/>
            <embed type="application/x-shockwave-flash" src="http://www.dailymotion.com/swf/video/${currentNode.properties.identifier.string}?additionalInfos=0" width="${currentNode.properties.width.long}" height="${currentNode.properties.height.long}" allowfullscreen="${currentNode.properties.allowfullscreen.boolean}" allowscriptaccess="always"/>
        </object>
    </c:otherwise>
</c:choose>