<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>파일 자료 목록</title>

	<jsp:include page="../include/head.jsp"/>
</head>
<body>
<jsp:include page="../include/header.jsp" />

	<div class="content">
		<section class="page-title bg-02">
			<div class="container">
				<div class="columns">
					<div class="column is-12">
						<div class="block has-text-centered">
							<h1 class="is-capitalize text-lg font-happy">자료실</h1>
						</div>
					</div>
				</div>
			</div>
		</section>

<%--		<section class="section blog-wrap container">--%>
<%--			<form action="${path }/fileboard/list" method="GET" class="field has-addons has-addons-right">--%>
<%--				<p class="control">--%>
<%--                <span class="select">--%>
<%--                    <select id="type" name="type">--%>
<%--                        <option value="title">제목</option>--%>
<%--                    </select>--%>
<%--                </span>--%>
<%--				</p>--%>
<%--				<p class="control">--%>
<%--					<input class="input" type="text" id="keyword" name="keyword" placeholder="검색어를 입력하세요" value="${keyword }">--%>
<%--				</p>--%>
<%--				<p class="control">--%>
<%--					<input type="submit" class="button is-mainColor" value="검색" />--%>
<%--				</p>--%>
<%--			</form>--%>

			<table class="table">
				<thead>
				<tr>
					<th class="has-text-white has-text-centered">글번호</th>
					<th class="has-text-white has-text-centered">제목</th>
					<th class="has-text-white has-text-centered">작성일</th>
					<th class="has-text-white has-text-centered">조회수</th>
				</tr>
				</thead>
				<tbody>
				<c:forEach items="${fileboardList }" var="data" varStatus="status">
					<tr>
						<td class="has-text-centered">${status.count }</td>
						<td class="has-text-centered"><a href="${path }/fileboard/get?bno=${data.bno }">${data.title }</a></td>
						<td class="has-text-centered">
							<fmt:parseDate value="${data.regdate }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss" />
							<fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd" />
						</td>
						<td class="has-text-centered">${data.visited }</td>
					</tr>
				</c:forEach>
				<c:if test="${empty fileboardList}">
					<tr>
						<td class="has-text-centered" colspan="4">해당 목록이 존재하지 않습니다.</td>
					</tr>
				</c:if>
				</tbody>
			</table>

			<c:if test='${sid eq "admin"}'>
				<div class="buttons is-centered">
					<a href="${path }/fileboard/insert" class="button is-mainColor">공지 등록</a>
				</div>
			</c:if>

<%--			<nav class="pagination is-rounded is-centered mb-6" role="navigation" aria-label="pagination">--%>
<%--				<c:if test="${curPage > page.pageCount }">--%>
<%--					<a href="${path }/fileboard/list?page=${page.blockStartNum - 1 }<c:if test="${!empty keyword }">&type=${type }&keyword=${keyword }</c:if>" class="pagination-previous">Previous</a>--%>
<%--				</c:if>--%>
<%--				<c:if test="${page.blockLastNum < page.totalPageCount }">--%>
<%--					<a href="${path }/fileboard/list?page=${page.blockLastNum + 1 }<c:if test="${!empty keyword }">&type=${type }&keyword=${keyword }</c:if>" class="pagination-next">Next page</a>--%>
<%--				</c:if>--%>

<%--				<ul class="pagination-list">--%>
<%--					<c:forEach var="i" begin="${page.blockStartNum }" end="${page.blockLastNum }">--%>
<%--						<c:choose>--%>
<%--							<c:when test="${i == curPage }">--%>
<%--								<li>--%>
<%--									<a href="${path }/fileboard/list?page=${i }<c:if test="${!empty keyword }">&type=${type }&keyword=${keyword }</c:if>" class="pagination-link is-current" aria-label="Page ${i }" aria-current="page">${i }</a>--%>
<%--								</li>--%>
<%--							</c:when>--%>
<%--							<c:otherwise>--%>
<%--								<li>--%>
<%--									<a href="${path }/fileboard/list?page=${i }<c:if test="${!empty keyword }">&type=${type }&keyword=${keyword }</c:if>" class="pagination-link" aria-label="Page ${i }" aria-current="page">${i }</a>--%>
<%--								</li>--%>
<%--							</c:otherwise>--%>
<%--						</c:choose>--%>
<%--					</c:forEach>--%>
<%--				</ul>--%>
<%--			</nav>--%>
	</div>

<jsp:include page="../include/footer.jsp" />
</body>
</html>