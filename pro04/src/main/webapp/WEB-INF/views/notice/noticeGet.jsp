<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<c:set var="sid" value="${pageContext.session.getAttribute('sid') }"/>


<!DOCTYPE html>
<html lang="en">
<head>
    <title>공지사항 상세보기</title>
    <jsp:include page="../include/head.jsp" />
    <link rel="stylesheet" href="${path }/resources/css/boardget.css">
</head>

<body>
<jsp:include page="../include/header.jsp" />
<div class="content">

    <section class="page-title bg-02">
        <div class="container">
            <div class="columns">
                <div class="column is-12">
                    <div class="block has-text-centered">
                        <h1 class="is-capitalize text-lg font-happy">공지사항 상세보기</h1>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="section blog-wrap container">
        <div class="detail">
            <div class="conwrap">
                <div class="h3group">
                    <div class="location">
                        <span class="depth">홈</span>
                        <span class="depth">/ 회사소개</span><strong class="this">/ 공지사항</strong>
                    </div>
                </div>
    <div class="viewbody">
        <div class="hgroup">
            <c:if test="${ sid eq 'admin'}">
                <div class="no">NO ${notice.no }</div>
            </c:if>
            <div class="tit">${notice.title }</div>
            <div class="util">
                <div class="date">작성일${notice.regdate }</div>
                <div class="hit">조회수 ${notice.visited }</div></div>
        </div>
        <div class="content">
            ${notice.content }
        </div>
        <div class="buttons is-centered">
            <a class="button is-mainColor" href="${path }/notice/list">글 목록</a>
            <c:if test='${sid eq "admin"}'>
                <a class="button is-success" href="${path }/notice/update?no=${notice.no}">글 수정</a>
                <a class="button is-mainColor" href="${path }/notice/delete?no=${notice.no}">글 삭제</a>
            </c:if>
        </div>
    </div>

          </div>
        </div>
    </section>
</div>

        <jsp:include page="../include/footer.jsp" />
</body>

</html>
