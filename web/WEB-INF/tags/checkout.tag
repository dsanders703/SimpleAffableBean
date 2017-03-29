<%@ tag pageEncoding="UTF-8" %> <%-- required --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ attribute name="page" type="viewmodel.BaseViewModel" required="true" %>
<div class="headerWidget">

  <%-- tests for the following:
       * if cart exists and is not empty
       * if the servlet path does not contain '/checkout'
       * if the checkout view is returned with order failure message flagged
       * if the checkout view is returned with server-side validation errors detected
  --%>
  <c:set var="checkoutHeader" scope="request" value="${page.header.checkoutHeader}"/>

  <c:if test="${checkoutHeader.isViewable}">
    <a href="<c:url value='checkout'/>" class="bubble">
      <fmt:message key="proceedCheckout"/>
    </a>
  </c:if>
</div>