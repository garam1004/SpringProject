<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />   
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Quixlab - Bootstrap Admin Dashboard Template by Themefisher.com</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="${contextPath}/resources/mypage/images/favicon.png">
    <!-- Pignose Calender -->
    <link href="${contextPath}/resources/mypage/plugins/pg-calendar/css/pignose.calendar.min.css" rel="stylesheet">
    <!-- Chartist -->
    <link rel="stylesheet" href="${contextPath}/resources/mypage/plugins/chartist/css/chartist.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/mypage/plugins/chartist-plugin-tooltips/css/chartist-plugin-tooltip.css">
    <!-- Custom Stylesheet -->
    <link href="${contextPath}/resources/mypage/css/style.css" rel="stylesheet">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<style type="text/css">
.rounded-circle{
width:200px;}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		$("#delbtn").click(function(){
			if(confirm("탈퇴하시겠습니까?")){
				document.form.action="${contextPath}/del.my";
				document.form.submit();
			}
		});
	});
	
	$(document).ready(function(){
		$("#editbtn").click(function(){
			if(confirm("수정하시겠습니까?")){
				document.form.action="${contextPath}/editmem.my";
				document.form.submit();
			}
		});
	});
</script>



</head>

<body>


    
    <!--**********************************
        Main wrapper start
    ***********************************-->
    <div id="main-wrapper">

  		<jsp:include page="./sidebar/header.jsp"/>

        <!--**********************************
            Sidebar start
        ***********************************-->
        <jsp:include page="./sidebar/sidebar.jsp" />
        <!--**********************************
            Sidebar end
        ***********************************-->

        <!--**********************************
            Content body start
        ***********************************-->
         <div class="content-body">
            <!-- row -->
            <div class="container-fluid">
                <div class="row justify-content-center">
                	<div class="col-3"></div>
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="form-validation">
                                    <form class="form-valide" method="post" name="form">
                                       <div class="text-center">
                                    	<img alt="" class="rounded-circle mt-4"  src="${contextPath}/resources/mypage/images/userimage/${meminfo.profile_img}" >
                               		   </div>
                               		   <input type="hidden" name = "profile_img" value="${meminfo.profile_img}">
								   	   <input type="file" id="img_file" name="profile_img_new" onclick="click" accept="images/*"/><br><br>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-id">아이디<span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="val-id" name="id" value="${meminfo.id}" readonly>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-username">이름<span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="name" name="name" value="${meminfo.name}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-email">이메일<span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                 <input type="text" class="form-control" id="email" name="email" value="${meminfo.email}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-number">연락처<span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="phone" name="phone" value="${meminfo.phone}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
											 <label class="col-lg-4 col-form-label" for="val-number">성별<span class="text-danger">*</span></label>
											<div class="col-lg-6">
												<c:if test="${meminfo.gender == '남성' }">
												<label class="radio-inline mr-3"><input type="radio" name="gender" value="남성" checked="checked">남성</label>
												<label class="radio-inline mr-3"><input type="radio" name="gender" value="여성">여성</label>															
												</c:if>
												<c:if test="${meminfo.gender == '여성' }">
												<label class="radio-inline mr-3"><input type="radio" name="gender" value="남성">남성</label>
												<label class="radio-inline mr-3"><input type="radio" name="gender" value="여성" checked="checked">여성</label>															
												</c:if>
											</div>
										</div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-skill">지역<span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6"> 
                                            	<c:if test="${meminfo.location == '서울'}">                                         	
                                                <select class="form-control" id="location" name="location">
                                                    <option value="서울" selected="selected">서울</option>
                                                    <option value="부산">부산</option>
                                                    <option value="대구">대구</option>
                                                </select>
                                                </c:if>
                                                <c:if test="${meminfo.location == '부산'}">                                          	
                                                <select class="form-control" id="location" name="location">
                                                    <option value="서울">서울</option>
                                                    <option value="부산" selected="selected">부산</option>
                                                    <option value="대구">대구</option>
                                                </select>
                                                </c:if>
                                                <c:if test="${meminfo.location == '대구'}">                                          	
                                                <select class="form-control" id="location" name="location">
                                                    <option value="서울">서울</option>
                                                    <option value="부산">부산</option>
                                                    <option value="대구" selected="selected"> 대구</option>
                                                </select>
                                                </c:if>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-lg-8 ml-auto">
                                                <button type="button" class="btn btn-primary" id="editbtn">수정</button>
                                                <button type="reset" class="btn btn-primary">취소</button>
                                                <button type="button" class="btn btn-primary" id="delbtn">탈퇴하기</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                  <div class="col-3"></div>
                </div>
            </div>
            <!-- #/ container -->
        </div>
        <!--**********************************
            Content body end
        ***********************************-->
        
        
        <!--**********************************
            Footer start
        ***********************************-->
        <div class="footer">
            <div class="copyright">
                <p>Copyright &copy; Designed & Developed by <a href="${contextPath}/resources/mypage/https:/themeforest.net/user/quixlab">Quixlab</a> 2018</p>
            </div>
        </div>
        <!--**********************************
            Footer end
        ***********************************-->
    </div>
    <!--**********************************
        Main wrapper end
    ***********************************-->

    <!--**********************************
        Scripts
    ***********************************-->
    <script src="${contextPath}/resources/mypage/plugins/common/common.min.js"></script>
    <script src="${contextPath}/resources/mypage/js/custom.min.js"></script>
    <script src="${contextPath}/resources/mypage/js/settings.js"></script>
    <script src="${contextPath}/resources/mypage/js/gleek.js"></script>
    <script src="${contextPath}/resources/mypage/js/styleSwitcher.js"></script>
    
<%--     <script src="${contextPath}/resources/mypage/plugins/validation/jquery.validate.min.js"></script>
    <script src="${contextPath}/resources/mypage/plugins/validation/jquery.validate-init.js"></script>
 --%>

</body>

</html>