<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>회사소개</title>
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

<!-- about section -->

<section class="about_section">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 offset-md-1">
                <div class="detail-box pr-md-2">
                    <div class="heading_container">
                        <h2 class="">
                            My Rook Book
                        </h2>
                    </div>
                    <p class="detail_p_mt">
                        우리는 교육이 개인과 사회의 변화를 이끌고, 더 나은 미래를 창출하는 역할을 잘 이해하고 있습니다. 따라서 우리의 비전은 지식을 선도하는 길을 열며, 교육의 미래를 함께 만들어나가는 것입니다.

                        품질과 혁신: 우리는 교육의 품질을 향상시키기 위해 지속적인 혁신에 주력합니다. 최신 연구 결과와 교육 방법론을 바탕으로 학습자들이 보다 효과적으로 지식을 습득하고 응용할 수 있도록 혁신적인 교과서를 개발합니다.

                        개인 맞춤 교육: 각 학습자의 독특한 능력과 요구에 맞추어 교육 리소스를 제공하는 것을 중요한 가치로 여깁니다. 다양한 학습 경로와 자원을 통해 학생들이 자신만의 학습 방식을 찾고 개발할 수 있도록 돕습니다.

                        사회적 책임: 우리는 교육이 사회 전반에 긍정적인 영향을 미칠 수 있다는 사실을 알고 있습니다. 따라서 우리의 교육 자원은 사회적 공정성과 평등을 존중하며, 다양성을 존중하고 인권을 증진하는 데 기여하고자 합니다.

                    </p>
                </div>
            </div>
            <div class="col-md-6 px-0">
                <div class="img-box ">
                    <img src="images/about-img.jpg" class="box_img" alt="about img">
                </div>
            </div>
        </div>
    </div>
</section>

<!-- about section ends -->

<%@include file="footer.jsp"%>

</body>

</html>