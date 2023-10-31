<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="headerpath" value="<%=request.getContextPath() %>" />

<%@ include file="/encoding.jsp"%>
<%@ include file="/common.jsp"%>

<header class="header_section">
    <div class="header_top">
        <div class="container-fluid header_top_container">

            <div class="contact_nav">
                <a href=" ${ headerpath }/map.jsp">
                    <i class="fas fa-map-marker-alt" style="color: #30d588;"></i>
                    <span> Location </span>
                </a>

                <a href="">
                    <i class="fas fa-envelope" style="color: #30d588;"></i>
                    <span> sendjin5@gmail.com </span>
                </a>
            </div>
            <div class="social_box">
                <a href="">
                    <i class="fab fa-facebook-square" style="color: #30d588;"></i>
                </a>
                <a href="">
                    <i class="fab fa-instagram" style="color: #30d588;"></i>
                </a>
                <a href="">
                    <i class="fab fa-twitter-square" style="color: #30d588;"></i>
                </a>
                <a href="">
                    <i class="fab fa-youtube" style="color: #30d588;"></i>
                </a>
            </div>
        </div>
    </div>
    <div class="header_bottom">
        <div class="container-fluid">
            <nav class="navbar navbar-expand-lg custom_nav-container ">
                <a class="navbar-brand " href="${path }"> Roo Book </a>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav  ">
                        <li class="nav-item active">
                            <a class="nav-link" href="href="${path }"><i class="fas fa-home" style="color: #30d588;"></i>Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#compay.jsp">회사소개</a>
                        </li>
                        <li class="nav-item">
                        <li class="nav-item">
                            <a class="nav-link" href="service.jsp">Roo 서비스</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="book.jsp"> 교과서 </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.jsp">문의하기</a>
                        </li>

                        <c:if test="${sid eq 'admin' }">
                             <li class="nav-item">
                                <a class="nav-link" href="${headerpath }/Admin.do"> <span>관리자페이지</span> </a>
                            </li>
                        </c:if>
                        <c:if test="${!empty sid && sid ne 'admin' }">
                            <li class="nav-item">
                                <a class="nav-link" href="${headerpath }/MyPage.do"> <span>내정보 보기</span> </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="${headerpath }/Logout.do"> <span>로그아웃</span> </a>
                            </li>
                        </c:if>
                        <c:if test="${empty sid }">
                            <li class="nav-item">
                                <a class="nav-link" href="${headerpath }/Login.do"> <span>Login</span> </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="${headerpath }/Term.do"> <span>회원가입</span></a>
                            </li>
                        </c:if>

                    </ul>
                </div>
            </nav>
        </div>
    </div>
</header>