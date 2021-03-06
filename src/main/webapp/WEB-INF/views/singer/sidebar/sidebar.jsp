<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />   

<style type="text/css">

.nk-sidebar .metismenu .has-arrow:after {

    width: 0em;
    height: 0em;
    border-width: 0px;


}

</style>



   <!--**********************************
            Sidebar start
        ***********************************-->
        <div class="nk-sidebar">           
            <div class="nk-nav-scroll">
                <ul class="metismenu" id="menu">
                    
                    <li>
                        <a class="has-arrow" href="${contextPath}/singerMain.sin" aria-expanded="false">
                            <i class="icon-speedometer menu-icon"></i><span class="nav-text">메인페이지</span>
                        </a>
                    </li>
                    <li>
                        <a class="has-arrow" href="#" aria-expanded="false">
                            <i class="icon-globe-alt menu-icon"></i><span class="nav-text">공연일정</span>
                        </a>
                    </li>    
                    
                    <c:if test=""></c:if>
                    <li>
                        <a class="has-arrow" href="${contextPath}/resbusking.b" aria-expanded="false">
                            <i class="icon-envelope menu-icon"></i> <span class="nav-text">버스킹 예약(only Singer)</span>
                        </a>
                    </li>
<!--                     <li> -->
<%--                         <a class="has-arrow" href="${contextPath}/resources/singer/javascript:void()" aria-expanded="false"> --%>
<!--                             <i class="icon-screen-tablet menu-icon"></i><span class="nav-text">Apps</span> -->
<!--                         </a> -->
                      
<!--                     </li> -->
<!--                     <li> -->
<%--                         <a class="has-arrow" href="${contextPath}/resources/singer/javascript:void()" aria-expanded="false"> --%>
<!--                             <i class="icon-graph menu-icon"></i> <span class="nav-text">Charts</span> -->
<!--                         </a> -->
                     
<!--                     </li> -->
<!--                     <li class="nav-label">UI Components</li> -->
<!--                     <li> -->
<%--                         <a class="has-arrow" href="${contextPath}/resources/singer/javascript:void()" aria-expanded="false"> --%>
<!--                             <i class="icon-grid menu-icon"></i><span class="nav-text">UI Components</span> -->
<!--                         </a> -->
                       
<!--                     </li> -->
<!--                     <li> -->
<%--                         <a href="${contextPath}/resources/singer/widgets.html" aria-expanded="false"> --%>
<!--                             <i class="icon-badge menu-icon"></i><span class="nav-text">Widget</span> -->
<!--                         </a> -->
<!--                     </li> -->
<!--                     <li class="nav-label">Forms</li> -->
<!--                     <li> -->
<%--                         <a class="has-arrow" href="${contextPath}/resources/singer/javascript:void()" aria-expanded="false"> --%>
<!--                             <i class="icon-note menu-icon"></i><span class="nav-text">Forms</span> -->
<!--                         </a> -->
                       
<!--                     </li> -->
<!--                     <li class="nav-label">Table</li> -->
<!--                     <li> -->
<%--                         <a class="has-arrow" href="${contextPath}/resources/singer/javascript:void()" aria-expanded="false"> --%>
<!--                             <i class="icon-menu menu-icon"></i><span class="nav-text">Table</span> -->
<!--                         </a> -->
                       
<!--                     </li> -->
<!--                     <li class="nav-label">Pages</li> -->
<!--                     <li> -->
<%--                         <a class="has-arrow" href="${contextPath}/resources/singer/javascript:void()" aria-expanded="false"> --%>
<!--                             <i class="icon-notebook menu-icon"></i><span class="nav-text">Pages</span> -->
<!--                         </a> -->
<!--                         <ul aria-expanded="false"> -->
<%--                             <li><a href="${contextPath}/resources/singer/page-login.html">Login</a></li> --%>
<%--                             <li><a href="${contextPath}/resources/singer/page-register.html">Register</a></li> --%>
<%--                             <li><a href="${contextPath}/resources/singer/page-lock.html">Lock Screen</a></li> --%>
<%--                             <li><a class="has-arrow" href="${contextPath}/resources/singer/javascript:void()" aria-expanded="false">Error</a> --%>
<!--                                 <ul aria-expanded="false"> -->
<%--                                     <li><a href="${contextPath}/resources/singer/page-error-404.html">Error 404</a></li> --%>
<%--                                     <li><a href="${contextPath}/resources/singer/page-error-403.html">Error 403</a></li> --%>
<%--                                     <li><a href="${contextPath}/resources/singer/page-error-400.html">Error 400</a></li> --%>
<%--                                     <li><a href="${contextPath}/resources/singer/page-error-500.html">Error 500</a></li> --%>
<%--                                     <li><a href="${contextPath}/resources/singer/page-error-503.html">Error 503</a></li> --%>
<!--                                 </ul> -->
<!--                             </li> -->
<!--                         </ul> -->
<!--                     </li> -->
                </ul>
            </div>
        </div>
        <!--**********************************
            Sidebar end
        ***********************************-->  
    