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
    <style>
    .content {margin-top: 24px; padding: 24px;}
    .nav.nav-tabs {margin-top:80px;}
    .lesson_detail_top {display:inline-block;vertical-align:middle;}
    .lesson_detail_top.img_area {width:450px;text-align:center}
    .lesson_detail_top.img_area > img {width:300px;height:auto;}
    .lesson_detail_top.detail_area {width:calc(100% - 550px);margin-left:80px;}
    </style>
</head>
<body>
<jsp:include page="../include/header.jsp" />

<div class="content">
    <section class="page-title bg-02">
        <div class="container">
            <div class="columns">
                <div class="column is-12">
                    <div class="block has-text-centered">
                        <h1 class="is-capitalize text-lg font-happy">레슨 상세내용</h1>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <div class="container contents text-left">
        <div class="row">
            <div class="col-4 lesson_detail_top img_area">
                <img class="card-img-top" src="${lesson.img }" alt="${lesson.title }" width="100"/>
            </div>
            <div class="col-8 lesson_detail_top detail_area">
                <form action="" method="post">
                <table class="table">
                    <thead>
                    <tr>
                        <td colspan="2"><h2>${lesson.title }</h2></td>
                    </tr>
                    </thead>
                    <tbody >

                    <tr>
                        <th scope="row">강사</th>
                        <td>${lesson.teacher} </td>
                    </tr>
                    <tr>
                        <th scope="row">가격</th>
                        <td>${lesson.price}</td>
                    </tr>
                    <tr>
                        <td colspan="2" class="text-center">
                            <c:choose>
                                <c:when test="${!empty sid}">
                                    <input class="btn btn-main btn-medium" type="submit" value="장바구니 추가" onclick="addCart()">
                                    <input type="hidden" name="proNo" value="${lesson.lsno}">
                                </c:when>
                                <c:otherwise>
                                    <button class="btn btn-main btn-medium" type="button" onclick="location.href='${path }/lesson/cart?lsno=${lesson.lsno }'">장바구니</button>
                                </c:otherwise>
                            </c:choose>
                            <input class="btn btn-main btn-medium" type="submit" value="결제하기" onclick="paylesson()">
                        </td>
                    </tr>
                    </tbody>
                </table>
                </form>
            </div>
        </div>
        <%--
        <ul class="nav nav-tabs">
            <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#content_area">상세설명</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#review_area">리뷰</a>
         </li>--%>
        </ul>
        <div class="content" style="">
            <c:if test="${!empty lesson.video }">
                <video height="300" width="500" controls autoplay>
                    <source src="${lesson.video }" type="video/mp4">
                </video>
            </c:if>
            ${lesson.content}
        </div>
        <hr>
<%--
        <div id="review_area" class="content">
            <c:if test="${!empty reviewList}">
                <table class="table">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>리뷰내용</th>
                        <th>별점</th>
                        <th>비고</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${reviewList }" var="review" varStatus="status">
                        <tr>
                            <td>${status.count }</td>
                            <td>${review.content }</td>
                            <td>
                                <c:choose>
                                    <c:when test="${review.star eq 5}">★★★★★</c:when>
                                    <c:when test="${review.star eq 4}">★★★★</c:when>
                                    <c:when test="${review.star eq 3}">★★★</c:when>
                                    <c:when test="${review.star eq 2}">★★</c:when>
                                    <c:when test="${review.star eq 1}">★</c:when>
                                </c:choose>
                            </td>
                            <td>
                                <c:if test="${sid eq 'admin' || sid eq review.memId}">
                                    <a href="${path  }/ReviewDeletePro.do?rno=${review.rno }">리뷰삭제</a>
                                </c:if>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </c:if>
            <c:if test="${empty reviewList}">
                <p class="text-center">등록된 리뷰가 없습니다.</p>
            </c:if>
        </div>
        <hr>
        <div class="text-right" style="margin:20px 0;">
            <a class="btn btn-main btn-medium" href="${path  }/BookList.do?category=*" role="button">글 목록</a>
            <a class="btn btn-main btn-medium" href="${path  }/ReviewAdd.do?proNo=${lesson.proNo }" role="button">리뷰등록</a>
            <c:if test="${reviewPass eq true}">
            <a class="btn btn-main btn-medium" href="${path  }/ReviewAdd.do?proNo=${lesson.proNo }" role="button">리뷰등록</a>
            </c:if>
        </div>
    </div>

    <%@ include file="../footer.jsp" %>
    <%@ include file="../commonsub.jsp" %>--%>
</body>
</html>

<script>
    function addCart(){
        $("form").attr("action", "${path }/lesson/get?lsno=${lesson.lsno }");
    }
    function paylesson(){
        $("form").attr("action", "${path }/paylesson.do");
    }
</script>
