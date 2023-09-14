<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="/pro3_war" />
<c:set var="path" value=" servletContext.getRealPath('/pro3_war/resources/upload')"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항 글 보기</title>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
<header id="header">
    <!-- 헤더 부분 인클루드 -->
    <jsp:include page="../include/hd.jsp"></jsp:include>

</header>

<div class="content" id="content">
    <div class="row column text-center">
        <h2 class="h1">공지사항 상세 보기</h2>
        <hr>
        <div class="container">
            <table class="table">
                <thead>
                <tr>
                    <th class="item2">제목</th>
                    <th class="item3">작성일</th>
                    <th class="item4">조회수</th>
                </tr>
                </thead>
                <tbody>
                <c:set var="fileboard" value="${dto}"/>
                <c:set var="fileboard2" value="${dto2}"/>
                <tr>
                    <td class="item2">${fileboard.subject}</td>
                    <td class="item3">${fileboard.regtime}</td>
                    <td class="item4">${fileboard.userid}</td>
                </tr>
                <tr>
                    <td colspan="3">
                        ${fileboard.content}
                    </td>
                </tr>
                <tr>
                    <th class="item2" colspan="3">학습자료(클릭하여 다운로드)</th>
                </tr>
                <tr>
                    <td colspan="3">
                        <c:if test="${!empty fileboard2.originFile}">
                            <a href="${pageContext.request.contextPath}/resources/upload/${fileboard2.saveFolder}/${fileboard2.saveFile}" download="${fileboard2.originFile }"><i class="fas fa-file" style="color: #54c066;"></i> ${fileboard2.originFile }</a>
                        </c:if>
                    </td>
                </tr>
                </tbody>
            </table>
            <div class="button-group">
                <a class="button" href="${path1 }/guestbook/list.do">글 목록</a>
                <a class="button" href="${path1 }/guestbook/delete.do?articleno=${dto.articleno}">글 삭제</a>
                <a class="button" href="${path1 }/guestbook/edit.do?articleno=${dto.articleno}">글 수정</a>
            </div>
        </div>
    </div>
</div>
<footer id="footer" class="footer-nav row expanded collapse">
    <!-- 푸터 부분 인클루드 -->
    <jsp:include page="../include/ft.jsp"></jsp:include>
</footer>
</body>
</html>
