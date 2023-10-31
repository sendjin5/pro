<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>서비스페이지</title>
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
<!-- contact section -->
<section class="contact_section ">
    <div class="container-fluid">

        <div class="row">
            <div class="col-md-6 px-0">
                <div class="img-box ">
                    <img src="/images/contact-img.png" class="box_img" alt="about img">
                </div>
            </div>
            <div class="col-md-5 mx-auto">
                <div class="form_container">
                    <div class="heading_container heading_center">
                        <h2>문의하기</h2>
                    </div>
                    <form action="">
                        <div class="form-row">
                            <div class="form-group col">
                                <input type="text" class="form-control" placeholder="Your Name" />
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-lg-6">
                                <input type="text" class="form-control" placeholder="Phone Number" />
                            </div>
                            <div class="form-group col-lg-6">
                                <select name="" id="" class="form-control wide">
                                    <option value="">서비스 선택</option>
                                    <option value="">로그인 관련</option>
                                    <option value="">교과서 관련</option>
                                    <option value="">기타문의</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col">
                                <input type="email" class="form-control" placeholder="Email" />
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col">
                                <input type="text" class="message-box form-control" placeholder="Message" />
                            </div>
                        </div>
                        <div class="btn_box">
                            <button>
                                보내기
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- end contact section -->

<%@include file="footer.jsp"%>

</body>

</html>