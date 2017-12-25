<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<!-- 
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.3.2
Version: 3.6.2
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js" data-ng-app="MetronicApp"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js" data-ng-app="MetronicApp"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" data-ng-app="MetronicApp">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<title data-ng-bind="'Metronic AngularJS | ' + $state.current.data.pageTitle"></title>

<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport"/>
<meta content="" name="description"/>
<meta content="" name="author"/>

<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css"/>
<link href="${ctx}/metronic/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="${ctx}/metronic/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
<link href="${ctx}/metronic/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="${ctx}/metronic/assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
<link href="${ctx}/metronic/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css"/>
<!-- END GLOBAL MANDATORY STYLES -->

<!-- BEGIN DYMANICLY LOADED CSS FILES(all plugin and page related styles must be loaded between GLOBAL and THEME css files ) -->
<link id="ng_load_plugins_before"/>
<!-- END DYMANICLY LOADED CSS FILES -->

<!-- BEGIN THEME STYLES -->
<!-- DOC: To use 'rounded corners' style just load 'components-rounded.css' stylesheet instead of 'components.css' in the below style tag -->
<link href="${ctx}/metronic/assets/global/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<link href="${ctx}/metronic/assets/global/css/plugins.css" rel="stylesheet" type="text/css"/>
<link href="${ctx}/metronic/assets/admin/layout/css/layout.css" rel="stylesheet" type="text/css"/>
<link href="${ctx}/metronic/assets/admin/layout/css/themes/darkblue.css" rel="stylesheet" type="text/css" id="style_color"/>
<link href="${ctx}/metronic/assets/admin/layout/css/custom.css" rel="stylesheet" type="text/css"/>
<!-- END THEME STYLES -->

<link rel="shortcut icon" href="favicon.ico"/>
</head>
<!-- END HEAD -->

<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-fixed-mobile" and "page-footer-fixed-mobile" class to body element to force fixed header or footer in mobile devices -->
<!-- DOC: Apply "page-sidebar-closed" class to the body and "page-sidebar-menu-closed" class to the sidebar menu element to hide the sidebar by default -->
<!-- DOC: Apply "page-sidebar-hide" class to the body to make the sidebar completely hidden on toggle -->
<!-- DOC: Apply "page-sidebar-closed-hide-logo" class to the body element to make the logo hidden on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-hide" class to body element to completely hide the sidebar on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-fixed" class to have fixed sidebar -->
<!-- DOC: Apply "page-footer-fixed" class to the body element to have fixed footer -->
<!-- DOC: Apply "page-sidebar-reversed" class to put the sidebar on the right side -->
<!-- DOC: Apply "page-full-width" class to the body element to have full width page without the sidebar menu -->
<body data-ng-controller="AppController" class="page-header-fixed page-sidebar-closed-hide-logo page-quick-sidebar-over-content page-on-load" ng-class="{'page-container-bg-solid': settings.layout.pageBodySolid, 'page-sidebar-closed': settings.layout.pageSidebarClosed}">

	<!-- BEGIN PAGE SPINNER -->
	<div data-ng-spinner-bar class="page-spinner-bar">
		<div class="bounce1"></div>
		<div class="bounce2"></div>
		<div class="bounce3"></div>
	</div>
	<!-- END PAGE SPINNER -->

	<!-- BEGIN HEADER -->
	<div data-ng-include="'${ctx}/tpl/header.html'" data-ng-controller="HeaderController" class="page-header navbar navbar-fixed-top">
	</div>
	<!-- END HEADER -->

	<div class="clearfix">
	</div>

	

	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

	<!-- BEGIN CORE JQUERY PLUGINS -->
	<!--[if lt IE 9]>
	<script src="${ctx}/metronic/assets/global/plugins/respond.min.js"></script>
	<script src="${ctx}/metronic/assets/global/plugins/excanvas.min.js"></script> 
	<![endif]-->
	<script src="${ctx}/metronic/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
	<script src="${ctx}/metronic/assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
	<script src="${ctx}/metronic/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="${ctx}/metronic/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
	<script src="${ctx}/metronic/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="${ctx}/metronic/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
	<script src="${ctx}/metronic/assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
	<script src="${ctx}/metronic/assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>	
	<script src="${ctx}/metronic/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
	<!-- END CORE JQUERY PLUGINS -->

	<!-- BEGIN CORE ANGULARJS PLUGINS -->
	<script src="${ctx}/metronic/assets/global/plugins/angularjs/angular.min.js" type="text/javascript"></script>	
	<script src="${ctx}/metronic/assets/global/plugins/angularjs/angular-sanitize.min.js" type="text/javascript"></script>
	<script src="${ctx}/metronic/assets/global/plugins/angularjs/angular-touch.min.js" type="text/javascript"></script>	
	<script src="${ctx}/metronic/assets/global/plugins/angularjs/plugins/angular-ui-router.min.js" type="text/javascript"></script>
	<script src="${ctx}/metronic/assets/global/plugins/angularjs/plugins/ocLazyLoad.min.js" type="text/javascript"></script>
	<script src="${ctx}/metronic/assets/global/plugins/angularjs/plugins/ui-bootstrap-tpls.min.js" type="text/javascript"></script>
	<!-- END CORE ANGULARJS PLUGINS -->
	
	<!-- BEGIN APP LEVEL ANGULARJS SCRIPTS -->
	<script src="${ctx}/metronic/js/app.js" type="text/javascript"></script>
	<script src="${ctx}/metronic/js/directives.js" type="text/javascript"></script>
	<!-- END APP LEVEL ANGULARJS SCRIPTS -->

	<!-- BEGIN APP LEVEL JQUERY SCRIPTS -->
	<script src="${ctx}/metronic/assets/global/scripts/metronic.js" type="text/javascript"></script>
	<script src="${ctx}/metronic/assets/admin/layout/scripts/layout.js" type="text/javascript"></script>
	<script src="${ctx}/metronic/assets/admin/layout/scripts/quick-sidebar.js" type="text/javascript"></script>
	<script src="${ctx}/metronic/assets/admin/layout/scripts/demo.js" type="text/javascript"></script>  
	<!-- END APP LEVEL JQUERY SCRIPTS -->

	<script type="text/javascript">
		/* Init Metronic's core jquery plugins and layout scripts */
		$(document).ready(function() {   
			Metronic.init(); // Run metronic theme
			Metronic.setAssetsPath('${ctx}/metronic/assets/'); // Set the assets folder path			
		});
	</script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>