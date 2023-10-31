<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html lang="en">
<head>
    <title>투표 관리 - 등록</title>
    <jsp:include page="../include/head.jsp" />
    <link rel="stylesheet" href="${path}/resources/css/admin.css">
    <script type="text/javascript" src="${path }/resources/ckeditor/ckeditor.js"></script>
</head>

<body>
<jsp:include page="../include/headerAdmin.jsp" />
<div class="admin_contents_area">
    <jsp:include page="./adminBoardList.jsp" />
    <div class="container contents_area">
        <div class="column">
            <h1 class="is-size-3 has-text-weight-semibold">투표 - 등록하기</h1>
            <form action="${path }/vote/add.do" method="post" class="mt-5">
                <table class="table is-fullwidth is-bordered">
                    <colgroup>
                        <col style="width:20%;">
                        <col style="width:auto;">
                    </colgroup>
                    <tbody>
                    <tr>
                        <th class="has-text-centered">제목</th>
                        <td>
                            <input type="text" name="title" id="title" class="input" placeholder="제목 입력" maxlength="98" required>
                        </td>
                    </tr>
                    <tr>
                        <th class="has-text-centered">내용</th>
                        <td>
                            <textarea name="content" id="content" class="textarea" placeholder="내용 입력" rows="8" cols="100" maxlength="1400" required></textarea>
                            <script>
                                CKEDITOR.replace('content',	{filebrowserUploadUrl:'${path }/util/imageUpload.do'});
                            </script>
                        </td>
                    </tr>
                    <tr>
                        <th class="has-text-centered">시작일</th>
                        <td>
                            <input type="date" name="startDate" id="startDate" class="input" required>
                        </td>
                    </tr>
                    <tr>
                        <th class="has-text-centered">종료일</th>
                        <td>
                            <input type="date" name="finishDate" id="finishDate" class="input" required>
                        </td>
                    </tr>
                    <tr>
                        <th class="has-text-centered">등록할 포인트</th>
                        <td>
                            <input type="number" name="addPt" id="addPt" class="input" required>
                        </td>
                    </tr>
                    </tbody>
                </table>
                <div class="buttons is-right">
                    <button type="submit" class="button is-mainColor">등록</button>
                    <a href="${path }/admin/VoteMemberListAdmin.do" class="button is-success">목록</a>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>