<%--
  Created by IntelliJ IDEA.
  User: 37529
  Date: 15.05.2021
  Time: 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" pageEncoding="UTF-8"%>
<%-- Импортировать JSTL-библиотеку --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- Импортировать собственную библиотеку тегов --%>
<%@taglib prefix="ad" uri="http://tag/ad"%>
<%-- Извлечь JavaBean требуемого объявления --%>
<ad:getAds id="${param.id}" var="ad" />
<%-- Удалить его из системы --%>
<ad:deleteAd ad="${ad}" />
<%-- Переадресовать на страницу кабинета --%>
<c:redirect url="/cabinet.jsp" />