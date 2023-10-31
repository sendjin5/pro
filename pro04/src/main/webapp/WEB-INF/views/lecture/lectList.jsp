<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<c:set var="sid" value="${pageContext.session.getAttribute('sid') }"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>HEABEOP::</title>
    <jsp:include page="../include/head.jsp" />

    <link rel="stylesheet" href="${path }/resources/css/sub.css">
    <link rel="stylesheet" href="${path }/resources/css/lecture.css">
</head>
<body>

<jsp:include page="../include/header.jsp" />

<%-- 페이지 상단 --%>
<div class="container-fluid bg-primary mb-5">
    <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 400px">
        <h3 class="display-3 font-weight-bold text-white">커뮤니티</h3>
        <div class="d-inline-flex text-white">
            <p class="m-0"><a class="text-white" href="${path }/">Home</a></p>
            <p class="m-0 px-2">/</p>
            <p class="m-0"><a class="text-white" href="${path }/board/list.do?no=1">커뮤니티</a></p>
            <p class="m-0 px-2">/</p>
        </div>
    </div>
</div>
<%-- 페이지 상단 끝 --%>

<div class="content">
<section class="latest-podcast-section section-padding pb-0" id="section_2">

    <form action="${path }/lecture/list.do" method="get" class="field has-addons has-addons-right">
        <input type="hidden" name="no" value="${lecture.lno }" />
        <div class="input-group">
            <div class="input-group-append">
                <select id="inputState" name="type" class="form-control rounded-0 border-right-0">
                    <option value="title"<c:if test="${type eq 'title'}"> selected="selected"</c:if>>강의명</option>
                    <option value="nm"<c:if test="${type eq 'teacherId'}"> selected="selected"</c:if>>강사</option>
                </select>
            </div>
            <input type="text" class="form-control" id="keyword" name="keyword" placeholder="검색어를 입력하세요" value="${keyword }" aria-label="Recipient's username" aria-describedby="basic-addon2">
            <div class="input-group-append">
                <button class="btn btn-primary rounded-0" type="submit">검색</button>
            </div>
        </div>
    </form>

    <div class="container">
        <div class="row justify-content-center">

            <div class="col-lg-10 col-12">
                <div class="section-title-wrap mb-5">
                    <h3 class="section-title">테스트</h3>
                </div>
                <c:forEach items="${lectureList }" var="lecture" varStatus="status">
                <div class="lect-frame">
                    <div class="border-00">
                    <div class="d-inline-block img-box-wrap">
                        <div class="img-box">
                            <!-- 썸네일 - 누르면 상세페이지 이동 -->
                            <a href="${path }/lecture/get.do?lno=${lecture.lno }">
                                <img src=${path}/resources/image/lecture/thumnail(6).png">
                            </a>
                        </div>
                    </div>
                    <div class="d-inline-block lect_info">
                        <div class="custom-block-info">

                            <h2 class="mb-2">
                                <a href="${path }/lecture/get.do?lno=${lecture.lno }">${lecture.title }</a>
                            </h2>

                            <h3>${lecture.subTitle }</h3>
                            <p>과목 : ${lecture.sno } </p>
                            <p>강사 : ${lecture.teacherNm } 선생님</p>
                            <p>수강인원 : ${lecture.studentCnt }명</p>
                            <p>${lecture.cost }원</p>

                        </div>
                    </div>
                    </div>
                    </div>
                </div>
                </c:forEach>
                <c:if test="${empty lectureList }">
                    <div class="d-flex flex-column align-items-center justify-content-center" style="min-height:20vh;">
                        <h5 class="font-weight-bold">새로운 강의를 기대해주세요!</h5>
                    </div>

                </c:if>
            </div>
        </div>


    <nav class="pagination is-rounded is-centered mb-6" role="navigation" aria-label="pagination">
        <c:if test="${curPage > page.pageCount }">
            <a href="${path }/lecture/list.do?page=${page.blockStartNum - 1 }<c:if test="${!empty keyword }">&type=${type }&keyword=${keyword }</c:if>" class="pagination-previous">Previous</a>
        </c:if>
        <c:if test="${page.blockLastNum < page.totalPageCount }">
            <a href="${path }/lecture/list.do?page=${page.blockLastNum + 1 }<c:if test="${!empty keyword }">&type=${type }&keyword=${keyword }</c:if>" class="pagination-next">Next page</a>
        </c:if>
        <ul class="pagination-list">
            <c:forEach var="i" begin="${page.blockStartNum }" end="${page.blockLastNum }">
                <c:choose>
                    <c:when test="${i == curPage }">
                        <li>
                            <a href="${path }/lecture/list.do?page=${i }<c:if test="${!empty keyword }">&type=${type }&keyword=${keyword }</c:if>" class="pagination-link is-current" aria-label="Page ${i }" aria-current="page">${i }</a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li>
                            <a href="${path }/lecture/list.do?page=${i }<c:if test="${!empty keyword }">&type=${type }&keyword=${keyword }</c:if>" class="pagination-link" aria-label="Page ${i }" aria-current="page">${i }</a>
                        </li>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </ul>
    </nav>
</section>
    <c:if test="${sid eq 'admin'}">
    <a href="${path}/lecture/lectAdd.do" class="btn btn-primary" id="button-search" >강의 등록하기</a>
    </c:if>

</div>

<jsp:include page="../include/footer.jsp" />

</body>
</html>
