<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<c:set var="sid" value="${pageContext.session.getAttribute('sid') }"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>해법수학::레슨</title>
    <jsp:include page="../include/head.jsp" />
</head>
<body>
<jsp:include page="../include/header.jsp" />

<div class="content">
    <section class="page-title bg-02">
        <div class="container">
            <div class="columns">
                <div class="column is-12">
                    <div class="block has-text-centered">
                        <h1 class="is-capitalize text-lg font-happy">레슨</h1>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="section blog-wrap container">

        <table class="table">
            <thead>
            <tr>
                <th class="has-text-white has-text-centered">글번호</th>
                <th class="has-text-white has-text-centered">제목</th>
                <th class="has-text-white has-text-centered">강사</th>
                <th class="has-text-white has-text-centered">수강료</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${lessonList }" var="lesson" varStatus="status">
                <tr>
                    <td class="has-text-centered">${status.count }</td>
                    <td class="has-text-centered"><a href="${path }/lesson/get?lsno=${lesson.lsno }">${lesson.title }</a></td>
                    <td class="has-text-centered">${lesson.teacher }</td>
                    <td class="has-text-centered">${lesson.price }</td>
                </tr>
            </c:forEach>
            <c:if test="${empty lessonList}">
                <tr>
                    <td class="has-text-centered" colspan="4">해당 목록이 존재하지 않습니다.</td>
                </tr>
            </c:if>
            </tbody>
        </table>

    </section>
</div>

<jsp:include page="../include/footer.jsp" />
</body>
</html>

