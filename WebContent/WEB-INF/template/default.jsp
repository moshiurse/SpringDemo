<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    
    <meta name="description" content="">
    <meta name="author" content="">

    <title><tiles:getAsString name="title"></tiles:getAsString></title>
    

    <!-- Bootstrap core CSS -->    
    <link href="<c:url value='/static/lib/bootstrap/css/bootstrap.min.css' />" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<c:url value='/static/css/software-main.css' />" rel="stylesheet">
    <link href="<c:url value='/static/css/jquery.dataTables.min.css' />" rel="stylesheet">
    <link href="<c:url value='/static/css/bootstrap-select.min.css' />" rel="stylesheet">
    <link href="<c:url value='/static/css/easy-autocomplete.min.css' />" rel="stylesheet">
    <link href="<c:url value='/static/css/easy-autocomplete.themes.min.css' />" rel="stylesheet">
    <link href="<c:url value='/static/css/jquery-ui.min.css' />" rel="stylesheet">
       
    
    <script src="<c:url value='/static/js/jquery-3.1.1.min.js' />"></script>
    <script src="<c:url value='/static/lib/bootstrap/js/bootstrap.min.js' />"></script>
    <script src="<c:url value='/static/js/jquery.dataTables.min.js' />"></script>    
    <script src="<c:url value='/static/js/myCustomJsFunctions.js' />"></script>
    <script src="<c:url value='/static/js/bootstrap-select.min.js' />"></script>
    <script src="<c:url value='/static/js/jquery.easy-autocomplete.min.js' />"></script>
    <script src="<c:url value='/static/js/jquery.form.min.js' />"></script>
    <script src="<c:url value='/static/js/canvasjs.min.js' />"></script>
    <script src="<c:url value='/static/js/jquery-ui.min.js' />"></script>    
    <script src="<c:url value='/static/js/jspdf.min.js'/>"></script>
    <script src="<c:url value='/static/js/from_html.js'/>"></script>
    <script src="<c:url value='/static/js/split_text_to_size.js'/>"></script>
    <script src="<c:url value='/static/js/standard_fonts_metrics.js'/>"></script>
    <script src="<c:url value='/static/js/canvas.js'/>"></script>
    

  </head>
<body>
	<div>
		<tiles:insertAttribute name="header"></tiles:insertAttribute>
	</div>
	<div class="container-fluid">
		<tiles:insertAttribute name="content"></tiles:insertAttribute>
	</div>
	<div>
		<tiles:insertAttribute name="footer"></tiles:insertAttribute>
	</div>

</body>
</html>