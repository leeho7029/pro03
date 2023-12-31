<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="/pro3_war" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>자료실 목록</title>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
<div class="container is-fullhd">
	<!-- 헤더 부분 인클루드 -->
	<jsp:include page="../include/hd.jsp"></jsp:include>
	<figure class="visual" id="vs1">
		<ul class="imgbox">
			<li class="hero is-medium is-link">
				<div class="hero-body">
					<p class="title">
						Medium hero
					</p>
					<p class="subtitle">
						Medium subtitle
					</p>
				</div>
			</li>
		</ul>
	</figure>
	<div class="content" id="contents">
	    <div class="row column text-center">
	      <h2 class="h1">자료실 목록</h2>
	      <hr>
	      <div class="container">
			  <c:if test="${boardList.size() != 0}">

					  <table class="table table-active">
						  <tbody>
						  <c:forEach items="${boardList }" var="fileboard" varStatus="status">
							  <tr>
								  <td>${status.count }</td>
								  <td><a href="${path1}/guestbook/detail.do?articleno=${fileboard.articleno}">${fileboard.subject }</a></td>
								  <td>
									  <fmt:parseDate value="${fileboard.regtime }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss" />
									  <fmt:formatDate value="${regtime }" pattern="yyyy-MM-dd" />
								  </td>
							  </tr>
						  </c:forEach>
						  </tbody>
					  </table>

				  <table>
					  <tr>
						  <td>${navigation.navigator}</td>
					  </tr>
				  </table>
			  </c:if>
			  <%-- <c:if test='${sid eq "admin"}'>  --%>
					<div class="button-group">
					  <a class="button is-info" href="${path1 }/guestbook/insert.do">글쓰기</a>
					</div>
				<%-- </c:if> --%>
	      </div>
			<script>
			$(document).ready(function(){
				$('.filedown').click(function() {
					alert("원본 :  " + $(this).attr('ofile') + "      실제 :  " + $(this).attr('sfile'));
					$(document).find('[name="sfolder"]').val($(this).attr('sfolder'));
					$(document).find('[name="ofile"]').val($(this).attr('ofile'));
					$(document).find('[name="sfile"]').val($(this).attr('sfile'));
					$('#downform').attr('action', '${root}/article/download').attr('method', 'get').submit();
				});
			});
			</script>
	    </div>
	</div>
	<!-- 푸터 부분 인클루드 -->
	<jsp:include page="../include/ft.jsp"></jsp:include>
</div>
</body>
</html>