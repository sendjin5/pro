<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>초등교육책</title>
    <c:set var="path" value="<%=request.getContextPath() %>" />
    <%@ include file="/common.jsp"%>
    <style>
       .bd-placeholder-img {width: 250px; height:240px; }
    </style>
</head>


<!-- booklist section -->

<body class="sub_page">
<div class="hero_area">
    <div class="hero_bg_box">
        <img src="images/hero-bg.jpg" alt="">
    </div>
    <%@include file="header.jsp"%>
</div>

<main>

    <section class="py-5 text-center container">
        <div class="row py-lg-5">
            <div class="col-lg-6 col-md-8 mx-auto">
                <h1 class="fw-light">초등교육</h1>
                <p class="lead text-body-secondary">초등학생을 위한 교재</p>
                <a href="booklist2.jsp" class="btn btn-primary my-2">중등</a>
                <a href="booklist3.jsp" class="btn btn-secondary my-2">고등</a>
            </div>
        </div>
    </section>

    <div class="album py-5 bg-body-tertiary">
        <div class="container">
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
                <a class="col" >
                    <div class="card shadow-sm">
                        <img src="/images/book/1.jpg" href="company.jsp" class="bd-placeholder-img card-img-top" preserveAspectRatio="xMidYMid slice" focusable="false">
                        <div class="card-body">
                            <p class="card-text">책소개가 아주 짧게 들어감</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" value="/service.jsp" class="btn btn-sm btn-outline-secondary">장바구니 넣기</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <div class="col">
                    <div class="card shadow-sm">
                        <svg class="bd-placeholder-img card-img-top" width="250px" height="240" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: صورة مصغرة" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".5em">صورة مصغرة</text></svg>
                        <div class="card-body">
                            <p class="card-text">책소개가 아주 짧게 들어감</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-sm btn-outline-secondary">장바구니 넣기</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><div class="col">
                <div class="card shadow-sm">
                    <svg class="bd-placeholder-img card-img-top" width="250px" height="240" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: صورة مصغرة" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".5em">صورة مصغرة</text></svg>
                    <div class="card-body">
                        <p class="card-text">책소개가 아주 짧게 들어감</p>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="btn-group">
                                <button type="button" class="btn btn-sm btn-outline-secondary">장바구니 넣기</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div><div class="col">
                <div class="card shadow-sm">
                    <svg class="bd-placeholder-img card-img-top" width="250px" height="240" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: صورة مصغرة" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".5em">صورة مصغرة</text></svg>
                    <div class="card-body">
                        <p class="card-text">책소개가 아주 짧게 들어감</p>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="btn-group">
                                <button type="button" class="btn btn-sm btn-outline-secondary">장바구니 넣기</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div><div class="col">
                <div class="card shadow-sm">
                    <svg class="bd-placeholder-img card-img-top" width="250px" height="240" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: صورة مصغرة" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".5em">صورة مصغرة</text></svg>
                    <div class="card-body">
                        <p class="card-text">책소개가 아주 짧게 들어감</p>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="btn-group">
                                <button type="button" class="btn btn-sm btn-outline-secondary">장바구니 넣기</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div><div class="col">
                <div class="card shadow-sm">
                    <svg class="bd-placeholder-img card-img-top" width="250px" height="240" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: صورة مصغرة" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".5em">صورة مصغرة</text></svg>
                    <div class="card-body">
                        <p class="card-text">책소개가 아주 짧게 들어감</p>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="btn-group">
                                <button type="button" class="btn btn-sm btn-outline-secondary">장바구니 넣기</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </div>
    </div>
</main>


</body>
<!-- end booklist section -->

<%@include file="footer.jsp"%>

</html>