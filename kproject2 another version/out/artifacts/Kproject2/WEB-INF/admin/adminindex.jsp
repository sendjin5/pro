<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>관리자 페이지</title>

    <c:set var="path" value="<%=request.getContextPath() %>" />

    <%@ include file="/common.jsp"%>

</head>
<body>
<div class="hero_area">
    <div class="hero_bg_box">
        <img src="images/hero-bg.jpg" alt="">
    </div>
    <div>
        <%@ include file="/header.jsp"%>
    </div>


    <!-- slider section -->
    <section class="slider_section ">
        <div id="customCarousel1" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="container ">
                        <div class="row" >
                            <div class="col-lg-10 col-md-11 mx-auto" >
                                <div class="detail-box">
                                    <h1>
                                        이곳은 지식의 대나무숲, <br>
                                        끝없는 배움이 펼쳐지는 곳입니다.
                                    </h1>
                                    <p>
                                        새로운 아이디어와 통찰력을 얻으며 성장하는 이 공간에서, 우리는 역사를 읽고 미래를 상상하며 끊임없이 발전합니다. <br>
                                        지식의 보고에서 만나는 미래의 리더, 그 첫걸음을 함께 시작해보세요.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<!-- end slider section -->


<!-- service section -->

<section class="service_section layout_padding" id="service">>
    <div class="container">
        <div class="heading_container heading_center ">
            <h2 class="">
                Roo 서비스
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
                                    <span>교과서와 학습 자료</span>
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
                                    <span>교사 지원 프로그램</span>
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
                                    <span>학교 컨설팅</span>
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
                                    <span>디지털 학습 플랫폼</span>
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

<!-- company section -->

<section class="about_section" id="company">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 offset-md-1">
                <div class="detail-box pr-md-2">
                    <div class="heading_container">
                        <h2 class="">
                            Roo Book
                        </h2>
                    </div>
                    <br>

                    <p class="detail_p_mt">
                        <strong>우리는 교육이 개인과 사회의 변화를 이끌고, 더 나은 미래를 창출하는 역할을 잘 이해하고 있습니다. 따라서 우리의 비전은 지식을 선도하는 길을 열며, 교육의 미래를 함께 만들어나가는 것입니다.</strong>
                        <br><br>

                        <strong>1. 품질과 혁신</strong>: 우리는 교육의 품질을 향상시키기 위해 지속적인 혁신에 주력합니다. 최신 연구 결과와 교육 방법론을 바탕으로 학습자들이 보다 효과적으로 지식을 습득하고 응용할 수 있도록 혁신적인 교과서를 개발합니다.
                        <br>
                        <strong>2. 개인 맞춤 교육 </strong>: 각 학습자의 독특한 능력과 요구에 맞추어 교육 리소스를 제공하는 것을 중요한 가치로 여깁니다. 다양한 학습 경로와 자원을 통해 학생들이 자신만의 학습 방식을 찾고 개발할 수 있도록 돕습니다.
                        <br>
                        <strong>3. 사회적 책임 </strong>: 우리는 교육이 사회 전반에 긍정적인 영향을 미칠 수 있다는 사실을 알고 있습니다. 따라서 우리의 교육 자원은 사회적 공정성과 평등을 존중하며, 다양성을 존중하고 인권을 증진하는 데 기여하고자 합니다.

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

<!-- company section ends -->

<!-- book section -->

<section class="team_section layout_padding" id="book">>
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

<!-- contact section -->
<section class="contact_section " id="contact">>
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



<footer>
    <%@include file="/footer.jsp"%>
</footer>

<!-- jQery -->
<script src="js/jquery-3.4.1.min.js"></script>
<!-- popper js -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<!-- bootstrap js -->
<script src="js/bootstrap.js"></script>
<!-- owl slider -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
<!-- nice select -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js" integrity="sha256-Zr3vByTlMGQhvMfgkQ5BtWRSKBGa2QlspKYJnkjZTmo=" crossorigin="anonymous"></script>
<!-- custom js -->
<script src="js/custom.js"></script>
<!-- Google Map -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCh39n5U-4IoWpsVGUHWdqB6puEkhRLdmI&callback=myMap"></script>
<!-- End Google Map -->
</body>

</html>