<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>서비스</title>
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

<!-- service section -->

<section class="service_section layout_padding">
    <div class="container">
        <div class="heading_container heading_center ">
            <h2 class="">
                My Roo 서비스
            </h2>
            <p class="col-lg-8 px-0">
                우리의 서비스는 학습자들과 교사들의 성공을 중심으로 합니다. 지식과 혁신을 통해 교육 분야를 선도하는데 자부심을 느끼며, 미래의 리더와 창조적인 개척자를 양성하는데 기여하고자 합니다. 학습자의 다양한 요구와 학습 스타일에 부응하며, 지속 가능한 사회와 지식의 문을 열어나가는데 최선을 다 할 것입니다.
            </p>
        </div>
        <div class="service_container">
            <div class="carousel-wrap ">
                <div class="service_owl-carousel owl-carousel">
                    <div class="item">
                        <div class="box ">
                            <div class="img-box">
                                <img src="images/s3.png" alt="교과서와 학습 자료" />
                            </div>
                            <div class="detail-box">
                                <h5>
                                    교과서와 학습 자료
                                </h5>
                                <p>
                                    다양한 학년과 과목을 위한 교과서와 학습 자료를 제공합니다. <br>
                                    학습자의 성장 단계와 요구에 맞추어 적절한 내용과 난이도로 구성된 자료를 개발하여 학습 효과를 극대화합니다.

                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="box ">
                            <div class="img-box">
                                <img src="images/s2.png" alt="교사 지원 프로그램" />
                            </div>
                            <div class="detail-box">
                                <h5>
                                    교사 지원 프로그램
                                </h5>
                                <p>
                                    교사들을 위한 교육 리소스와 교수법을 제공하는 프로그램을 운영합니다. <br>
                                    교사들이 학생들의 학습을 효과적으로 지원할 수 있도록 돕는 것이 우리의 목표입니다.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="box ">
                            <div class="img-box">
                                <img src="images/s1.png" alt="학교 컨설팅" />
                            </div>
                            <div class="detail-box">
                                <h5>
                                    학교 컨설팅
                                </h5>
                                <p>
                                    학교의 교육과정 개선과 학습 환경 혁신을 위한 컨설팅 서비스를 제공합니다. <br>
                                    학교와 교사들의 요구와 목표를 파악하고 맞춤형 교육 솔루션을 개발하여 학교 커뮤니티 전반에 긍정적인 변화를 가져옵니다.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="box ">
                            <div class="img-box">
                                <img src="images/s4.png" alt="디지털 학습 플랫폼" />
                            </div>
                            <div class="detail-box">
                                <h5>
                                    디지털 학습 플랫폼
                                </h5>
                                <p>
                                    현대 학습 환경에 부합하도록 디지털 학습 플랫폼을 제공합니다. <br>
                                    온라인 퀴즈, 대화형 모듈, 멀티미디어 콘텐츠 등을 활용하여 학생들이 더욱 적극적으로 학습에 참여하도록 돕습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- service section ends -->

<%@include file="footer.jsp"%>

</body>

</html>