<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>책 소개</title>
    <c:set var="path" value="<%=request.getContextPath() %>" />
    <%@ include file="/common.jsp"%>
</head>

<body class="sub_page">
<div class="hero_area">
    <div class="hero_bg_box">
        <img src="images/hero-bg.jpg" alt="">
    </div>
        <%@include file="header.jsp"%>
    </div>

<!-- book section -->

<section class="team_section layout_padding">
    <div class="container">
        <div class="heading_container heading_center">
            <h2>
                 책 소개
            </h2>
            <p>
                전문적으로 할 생각
            </p>
        </div>
        <a href=""></a>
        <div class="row">
            <a  href="booklist1.jsp" class="col-md-4 col-sm-6 mx-auto">
                <div class="box">
                    <div class="img-box">
                        <img src="images/t1.jpg" alt="">
                    </div>
                    <div class="detail-box">
                        <h5>
                            초등교육
                        </h5>
                        <h6 class="">
                            supervisor
                        </h6>
                    </div>
                </div>
            </a>
            <div class="col-md-4 col-sm-6 mx-auto">
                <div class="box">
                    <div class="img-box">
                        <img src="images/t2.jpg" alt="">
                    </div>
                    <div class="detail-box">
                        <h5>
                            중등교육
                        </h5>
                        <h6 class="">
                            supervisor
                        </h6>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6 mx-auto">
                <div class="box">
                    <div class="img-box">
                        <img src="images/t3.jpg" alt="">
                    </div>
                    <div class="detail-box">
                        <h5>
                            고등교육
                        </h5>
                        <h6 class="">
                            supervisor
                        </h6>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- end book section -->

<%@include file="footer.jsp"%>

</body>

</html>