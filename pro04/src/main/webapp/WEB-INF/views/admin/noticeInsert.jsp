<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>공지사항 상세보기</title>
    <jsp:include page="../include/head.jsp" />
    <link rel="stylesheet" href="${path }/resources/css/admin.css">
    <script type="text/javascript" src="${path }/resources/ckeditor/ckeditor.js"></script>
</head>

<body>
<jsp:include page="../include/headerAdmin.jsp" />
<div class="admin_contents_area">
    <jsp:include page="./adminBoardList.jsp" />
    <div class="container contents_area">
        <h1 class="is-size-3 has-text-weight-semibold">공지사항 추가</h1>
        <div class="container">
            <form action="${path }/admin/notiInsert" method="post">
            <table class="table tb2">
                <tbody>
                <tr>
                    <th class="has-text-centered">글 제목</th>
                    <td><input type="text" name="title" id="title" placeholder="제목 입력" required></td>
                </tr>
                <tr>
                    <th class="has-text-centered">글 내용</th>
                    <td>
                        <textarea name="content" id="content" class="textarea" placeholder="내용 입력" rows="8" cols="100" maxlength="1400" required></textarea>
                        <script>
                            CKEDITOR.replace('content',	{filebrowserUploadUrl:'${path }/util/imageUpload'});
                        </script>
                    </td>
                </tr>
                </tbody>
            </table>
                <div class="buttons is-right">
                    <input type="submit" class="button is-mainColor" value="글 등록">
                    <a class="button is-success" href="${path }/admin/notiList">글 목록</a>
                </div>
            </form>
        </div>
    </div>
</div>
</body>

</html>
