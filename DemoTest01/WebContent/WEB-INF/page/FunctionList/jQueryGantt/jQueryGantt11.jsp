<%@ Page Language="C#" AutoEventWireup="true"
	CodeBehind="GANT_MST.aspx.cs"
	Inherits="WebApp.XMKApp.ZDCB._15_GCJD.GANT_MST"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>开店任务甘特图</title>
<link rel=stylesheet href="../../../jQueryGanttMaster/platform.css"
	type="text/css">
	<link rel=stylesheet
		href="../../../jQueryGanttMaster/libs/dateField/jquery.dateField.css"
		type="text/css">
		<link rel=stylesheet href="../../../jQueryGanttMaster/gantt.css"
			type="text/css">
			<link rel=stylesheet href="../../../jQueryGanttMaster/print.css"
				type="text/css" media="print">
				<script type="text/javascript"
					src="http://libs.baidu.com/jquery/1.8.3/jquery.min.js"></script>
				<script type="text/javascript"
					src="http://libs.baidu.com/jqueryui/1.8.22/jquery-ui.min.js "></script>
				<script type="text/javascript"
					src="../../../jQueryGanttMaster/libs/jquery.livequery.min.js"></script>
				<script type="text/javascript"
					src="../../../jQueryGanttMaster/libs/jquery.timers.js"></script>
				<script type="text/javascript"
					src="../../../jQueryGanttMaster/libs/platform.js"></script>
				<script type="text/javascript"
					src="../../../jQueryGanttMaster/libs/date.js"></script>
				<script type="text/javascript"
					src="../../../jQueryGanttMaster/libs/i18nJs.js" charset="gbk"></script>
				<script type="text/javascript"
					src="../../../jQueryGanttMaster/libs/dateField/jquery.dateField.js"></script>
				<script type="text/javascript"
					src="../../../jQueryGanttMaster/libs/JST/jquery.JST.js"></script>
				<link rel="stylesheet" type="text/css"
					href="../../../jQueryGanttMaster/libs/jquery.svg.css">
					<script type="text/javascript"
						src="../../../jQueryGanttMaster/libs/jquery.svg.min.js"></script>
					<!--In case of jquery 1.7-->
					<!--<script type="text/javascript" src="libs/jquery.svgdom.pack.js"></script>-->
					<!--In case of jquery 1.8-->
					<script type="text/javascript"
						src="../../../jQueryGanttMaster/libs/jquery.svgdom.1.8.js"></script>
					<script type="text/javascript"
						src="../../../jQueryGanttMaster/ganttUtilities.js"></script>
					<script type="text/javascript"
						src="../../../jQueryGanttMaster/ganttTask.js"></script>
					<script type="text/javascript"
						src="../../../jQueryGanttMaster/ganttDrawerSVG.js"></script>
					<!--<script src="ganttDrawer.js"></script>-->
					<script type="text/javascript"
						src="../../../jQueryGanttMaster/ganttGridEditor.js"></script>
					<script type="text/javascript"
						src="../../../jQueryGanttMaster/ganttMaster.js"></script>
</head>
<body style="background-color: #fff;">
	<div id="query_hint" class="query_hint" style="display: none;">
		<img src="../../../jQuery-EasyUI/themes/default/images/loading.gif" />正在导出，请等待...
	</div>
	<div id="workSpace"
		style="padding: 0px; overflow-y: auto; overflow-x: hidden; border: 1px solid #e5e5e5; position: relative; margin: 0 5px"></div>
	<div id="taZone" style="display: none;" class="noprint">
		<textarea rows="8" cols="150" id="ta"> {"tasks":[ {"id":-1,"name":"Gantt editor","code":"","level":0,"status":"STATUS_ACTIVE","canWrite":true,"start":1396994400000,"duration":21,"end":1399672799999,"startIsMilestone":true,"endIsMilestone":false,"collapsed":false,"assigs":[],"hasChild":true} ,{"id":-2,"name":"coding","code":"","level":1,"status":"STATUS_ACTIVE","canWrite":true,"start":1396994400000,"duration":10,"end":1398203999999,"startIsMilestone":false,"endIsMilestone":false,"collapsed":false,"assigs":[],"description":"","progress":0,"hasChild":true} ,{"id":-3,"name":"gantt part","code":"","level":2,"status":"STATUS_ACTIVE","canWrite":true,"start":1396994400000,"duration":2,"end":1397167199999,"startIsMilestone":false,"endIsMilestone":false,"collapsed":false,"assigs":[],"depends":"","hasChild":false} ,{"id":-4,"name":"editor part","code":"","level":2,"status":"STATUS_SUSPENDED","canWrite":true,"start":1397167200000,"duration":4,"end":1397685599999,"startIsMilestone":false,"endIsMilestone":false,"collapsed":false,"assigs":[],"depends":"3","hasChild":false} ,{"id":-5,"name":"testing","code":"","level":1,"status":"STATUS_SUSPENDED","canWrite":true,"start":1398981600000,"duration":6,"end":1399672799999,"startIsMilestone":false,"endIsMilestone":false,"collapsed":false,"assigs":[],"depends":"2:5","description":"","progress":0,"hasChild":true} ,{"id":-6,"name":"test on safari","code":"","level":2,"status":"STATUS_SUSPENDED","canWrite":true,"start":1398981600000,"duration":2,"end":1399327199999,"startIsMilestone":false,"endIsMilestone":false,"collapsed":false,"assigs":[],"depends":"","hasChild":false} ,{"id":-7,"name":"test on ie","code":"","level":2,"status":"STATUS_SUSPENDED","canWrite":true,"start":1399327200000,"duration":3,"end":1399586399999,"startIsMilestone":false,"endIsMilestone":false,"collapsed":false,"assigs":[],"depends":"6","hasChild":false} ,{"id":-8,"name":"test on chrome","code":"","level":2,"status":"STATUS_SUSPENDED","canWrite":true,"start":1399327200000,"duration":2,"end":1399499999999,"startIsMilestone":false,"endIsMilestone":false,"collapsed":false,"assigs":[],"depends":"6","hasChild":false} ],"selectedRow":0,"canWrite":true,"canWriteOnParent":true} </textarea>
		<button onclick="loadGanttFromServer();">load</button>
	</div>
	<style>
.resEdit {
	padding: 15px;
}

.resLine {
	width: 95%;
	padding: 3px;
	margin: 5px;
	border: 1px solid #d0d0d0;
}

body {
	overflow: hidden;
}

.ganttButtonBar h1 {
	color: #000000;
	font-weight: bold;
	font-size: 28px;
	margin-left: 10px;
}
</style>
	<style>
.query_hint {
	border: 5px solid #939393;
	width: 250px;
	height: 50px;
	line-height: 55px;
	padding: 0 20px;
	position: absolute;
	left: 50%;
	margin-left: -140px;
	top: 50%;
	margin-top: -40px;
	font-size: 15px;
	color: #333;
	font-weight: bold;
	text-align: center;
	background-color: #f9f9f9;
}

.query_hint img {
	position: relative;
	top: 10px;
	left: -8px;
}
</style>
	<form id="gimmeBack" style="display: none;" action="../gimmeBack.jsp"
		method="post" target="_blank">
		<input type="hidden" name="prj" id="gimBaPrj">
	</form>
	<script type="text/javascript">
		//显示等待效果 function show_query_hint(query_hint) { var query_hint = document.getElementById(query_hint); query_hint.style.display = "block"; } //关闭等待效果 function queryHintCallback(query_hint) { var query_hint = document.getElementById(query_hint); query_hint.style.display = "none"; } function GetQueryString(name) { var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); var r = window.location.search.substr(1).match(reg); //if (r != null) return unescape(r[2]); return null; if (r != null) return r[2]; return null; } var gKDJHNO; var gBASENOPostData; var ge; //this is the hugly but very friendly global var for the gantt editor $(function () { queryHintCallback('query_hint'); //load templates $("#ganttemplates").loadTemplates(); // here starts gantt initialization ge = new GanttMaster(); ge.canWriteOnParent = false; ge.canWrite = false; var workSpace = $("#workSpace"); workSpace.css({ width: $(window).width() - 20, height: $(window).height() - 40 }); ge.init(workSpace); //inject some buttons (for this demo only) //.append("<button onclick='clearGantt();' class='button'>clear</button>").append("        ") // $(".ganttButtonBar div") // .append("<button onclick='getFile();' class='button'>导出</button>"); $(".ganttButtonBar h1").html("<a href='' title='Twproject the friendly project and work management tool' target='_blank'><img width='80%' src='res/twBanner.jpg'></a>"); $(".ganttButtonBar div").addClass('buttons'); //overwrite with localized ones loadI18n(); //simulate a data load from a server. loadGanttFromServer(); //fill default Teamwork roles if any if (!ge.roles || ge.roles.length == 0) { setRoles(); } //fill default Resources roles if any if (!ge.resources || ge.resources.length == 0) { setResource(); } /*/debug time scale $(".splitBox2").mousemove(function(e){ var x=e.clientX-$(this).offset().left; var mill=Math.round(x/(ge.gantt.fx) + ge.gantt.startMillis) $("#ndo").html(x+" "+new Date(mill)) });*/ $(window).resize(function () { workSpace.css({ width: $(window).width() - 20, height: $(window).height() - 40 }); workSpace.trigger("resize.gantt"); }) }); function loadGanttFromServer(taskId, callback) {//(taskId,callback) old param //this is a simulation: load data from the local storage if you have already played with the demo or a textarea with starting demo data //loadFromLocalStorage(); //this is the real implementation //var taskId = $("#taskSelector").val(); var prof = new Profiler("loadServerSide"); prof.reset(); var postData; var KDJHNO = GetQueryString('KDJHNO'); gKDJHNO = KDJHNO; if (KDJHNO == null || KDJHNO == '') { var BASENO = GetQueryString('BASENO'); if (BASENO == null || BASENO == '') { return; } var ItemName = GetQueryString('ItemName'); var PBDATE_FROM = GetQueryString('PBDATE_FROM'); var PBDATE_TO = GetQueryString('PBDATE_TO'); var DEPT = GetQueryString('DEPT'); postData = { action: "GetProject" , BASENO: BASENO , ItemName: ItemName , PBDATE_FROM: PBDATE_FROM , PBDATE_TO: PBDATE_TO , DEPT: DEPT }; gBASENOPostData = postData; } else { postData = { action: "GetGanttData" , KDJHNO: KDJHNO }; } $.getJSON("GANT_MSTServer.ashx", postData, function (msg) { //console.debug(response); if (msg.Statue == "ok") { prof.stop(); ge.loadProject(msg.data); ge.checkpoint(); //empty the undo stack if (typeof(callback)=="function") { callback(msg); } } else { alert(msg.data); } }); } function saveGanttOnServer() { if (!ge.canWrite) return; //this is a simulation: save data to the local storage or to the textarea saveInLocalStorage(); /* var prj = ge.saveProject(); delete prj.resources; delete prj.roles; var prof = new Profiler("saveServerSide"); prof.reset(); if (ge.deletedTaskIds.length>0) { if (!confirm("TASK_THAT_WILL_BE_REMOVED\n"+ge.deletedTaskIds.length)) { return; } } $.ajax("ganttAjaxController.jsp", { dataType:"json", data: {CM:"SVPROJECT",prj:JSON.stringify(prj)}, type:"POST", success: function(response) { if (response.ok) { prof.stop(); if (response.project) { ge.loadProject(response.project); //must reload as "tmp_" ids are now the good ones } else { ge.reset(); } } else { var errMsg="Errors saving project\n"; if (response.message) { errMsg=errMsg+response.message+"\n"; } if (response.errorMessages.length) { errMsg += response.errorMessages.join("\n"); } alert(errMsg); } } }); */ } //------------------------------------------- Create some demo data ------------------------------------------------------ function setRoles() { ge.roles = [ { id: "tmp_1", name: "Project Manager" }, { id: "tmp_2", name: "Worker" }, { id: "tmp_3", name: "Stakeholder/Customer" } ]; } function setResource() { var res = []; for (var i = 1; i <= 10; i++) { res.push({ id: "tmp_" + i, name: "Resource " + i }); } ge.resources = res; } function editResources() { } function clearGantt() { ge.reset(); } function loadI18n() { GanttMaster.messages = { "CANNOT_WRITE": "不能编辑", "CHANGE_OUT_OF_SCOPE": "没有超出编辑范围更新父级的权限", "START_IS_MILESTONE": "开始是里程碑", "END_IS_MILESTONE": "结束时里程碑", "TASK_HAS_CONSTRAINTS": "任务包含约束", "GANTT_ERROR_DEPENDS_ON_OPEN_TASK": "错误：特定于开放的任务", "GANTT_ERROR_DESCENDANT_OF_CLOSED_TASK": "错误：衍生于关闭的任务", "TASK_HAS_EXTERNAL_DEPS": "任务包含外部依赖", "GANTT_ERROR_LOADING_DATA_TASK_REMOVED": "错误：加载被删除的任务", "ERROR_SETTING_DATES": "日期时间设置错误（依赖时间关系或父级任务工期）", "CIRCULAR_REFERENCE": "有无限循环参照", "CANNOT_DEPENDS_ON_ANCESTORS": "不能依赖父级任务", "CANNOT_DEPENDS_ON_DESCENDANTS": "不能依赖子级任务", "INVALID_DATE_FORMAT": "无效日期格式", "TASK_MOVE_INCONSISTENT_LEVEL": "任务移动非连续级别", "GANTT_QUARTER_SHORT": "trim.", "GANTT_SEMESTER_SHORT": "sem." }; } //------------------------------------------- Get project file as JSON (used for migrate project from gantt to Teamwork) ------------------------------------------------------ function getFile() { $("#gimBaPrj").val(JSON.stringify(ge.saveProject())); $("#gimmeBack").submit(); $("#gimBaPrj").val(""); /* var uriContent = "data:text/html;charset=utf-8," + encodeURIComponent(JSON.stringify(prj)); neww=window.open(uriContent,"dl");*/ } function exportMpp() { //var prjData = JSON.stringify(ge.saveProject()); var prjData = ge.saveProject(); if (prjData == null || prjData.length <= 0) { alert('没有数据，不能导出'); return; } var postData; if (gKDJHNO == null || gKDJHNO == '') { postData = { action: "ExportMppExt" , BASENO: gBASENOPostData.BASENO , ItemName: gBASENOPostData.ItemName , PBDATE_FROM: gBASENOPostData.PBDATE_FROM , PBDATE_TO: gBASENOPostData.PBDATE_TO , DEPT: gBASENOPostData.DEPT //, JSON_DATA: JSON.stringify(prjData) }; } else { postData = { action: "ExportMpp" , KDJHNO: gKDJHNO //, JSON_DATA: JSON.stringify(prjData) }; } //show_query_hint $.ajax({ url: 'GANT_MSTServer.ashx', type: 'POST', data: postData, dataType: 'json', async: true, beforeSend: function (XMLHttpRequest) { show_query_hint('query_hint'); }, success: function (msg) { queryHintCallback('query_hint'); if (msg.Statue == "ok") { downloadMpp(msg.data); } else { alert(msg.data); } }, error: function (XMLHttpRequest, textStatus, errorThrown) { alert(errorThrown); queryHintCallback('query_hint'); } }); } function downloadMpp(mppname) { var formData = []; var form = $("<form>"); //定义一个form表单 form.attr("style", "display:none"); form.attr("target", ""); form.attr("method", "post"); form.attr("action", "GANT_MSTServer.ashx?action=DownloadMpp&FILE=" + mppname); $("body").append(form); for (var i = 0; i < formData.length; i++) { var input = $("<input>"); input.attr("type", "hidden"); input.attr("name", "" + formData[i].name + ""); input.attr("value", formData[i].value); form.append(input); } try { form.submit(); //表单提交 } catch (e) { alert(e); } } //------------------------------------------- LOCAL STORAGE MANAGEMENT (for this demo only) ------------------------------------------------------ Storage.prototype.setObject = function (key, value) { this.setItem(key, JSON.stringify(value)); }; Storage.prototype.getObject = function (key) { return this.getItem(key) && JSON.parse(this.getItem(key)); }; function loadFromLocalStorage() { var ret; if (localStorage) { if (localStorage.getObject("teamworkGantDemo")) { ret = localStorage.getObject("teamworkGantDemo"); } } else { $("#taZone").show(); } if (!ret || !ret.tasks || ret.tasks.length == 0) { ret = JSON.parse($("#ta").val()); //actualiza data var offset = new Date().getTime() - ret.tasks[0].start; for (var i = 0; i < ret.tasks.length; i++) ret.tasks[i].start = ret.tasks[i].start + offset; } ge.loadProject(ret); ge.checkpoint(); //empty the undo stack } function saveInLocalStorage() { var prj = ge.saveProject(); if (localStorage) { localStorage.setObject("teamworkGantDemo", prj); } else { $("#ta").val(JSON.stringify(prj)); } } //------------------------------------------- Open a black popup for managing resources. This is only an axample of implementation (usually resources come from server) ------------------------------------------------------ function editResources() { //make resource editor var resourceEditor = $.JST.createFromTemplate({}, "RESOURCE_EDITOR"); var resTbl = resourceEditor.find("#resourcesTable"); for (var i = 0; i < ge.resources.length; i++) { var res = ge.resources[i]; resTbl.append($.JST.createFromTemplate(res, "RESOURCE_ROW")) } //bind add resource resourceEditor.find("#addResource").click(function () { resTbl.append($.JST.createFromTemplate({ id: "new", name: "resource" }, "RESOURCE_ROW")) }); //bind save event resourceEditor.find("#resSaveButton").click(function () { var newRes = []; //find for deleted res for (var i = 0; i < ge.resources.length; i++) { var res = ge.resources[i]; var row = resourceEditor.find("[resId=" + res.id + "]"); if (row.size() > 0) { //if still there save it var name = row.find("input[name]").val(); if (name && name != "") res.name = name; newRes.push(res); } else { //remove assignments for (var j = 0; j < ge.tasks.length; j++) { var task = ge.tasks[j]; var newAss = []; for (var k = 0; k < task.assigs.length; k++) { var ass = task.assigs[k]; if (ass.resourceId != res.id) newAss.push(ass); } task.assigs = newAss; } } } //loop on new rows resourceEditor.find("[resId=new]").each(function () { var row = $(this); var name = row.find("input[name]").val(); if (name && name != "") newRes.push(new Resource("tmp_" + new Date().getTime(), name)); }); ge.resources = newRes; closeBlackPopup(); ge.redraw(); }); var ndo = createBlackPage(400, 500).append(resourceEditor); } //------------------------print() xuezt add ---------------------------------- function printPage() { print(); } function myPrint() { bdhtml = window.document.body.innerHTML; sprnstr = "<!--startprint-->"; eprnstr = "<!--endprint-->"; //debugger; prnhtml = bdhtml.substr(bdhtml.indexOf(sprnstr) + 17); prnhtml = prnhtml.substring(0, prnhtml.indexOf(eprnstr)); prnhtml = $('#workSpace').html(); var newBdhtml = ''; newBdhtml = newBdhtml + '<!doctype html>'; newBdhtml = newBdhtml + '<html lang="en">'; newBdhtml = newBdhtml + ' <head>'; newBdhtml = newBdhtml + ' <meta charset="gb2312">'; newBdhtml = newBdhtml + ' <meta http-equiv="X-UA-Compatible" content="IE=Edge;chrome=1" >'; newBdhtml = newBdhtml + ' <link rel=stylesheet href="../../../jQueryGanttMaster/platform.css" type="text/css">'; newBdhtml = newBdhtml + ' <link rel=stylesheet href="../../../jQueryGanttMaster/libs/dateField/jquery.dateField.css" type="text/css">'; newBdhtml = newBdhtml + ' <link rel=stylesheet href="../../../jQueryGanttMaster/gantt.css" type="text/css">'; newBdhtml = newBdhtml + ' <link rel=stylesheet href="../../../jQueryGanttMaster/print.css" type="text/css" media="print">'; newBdhtml = newBdhtml + ' <script type="text/javascript" src="http://libs.baidu.com/jquery/1.8.3/jquery.min.js"><\/script>'; newBdhtml = newBdhtml + ' <script type="text/javascript" src="http://libs.baidu.com/jqueryui/1.8.22/jquery-ui.min.js "><\/script>'; newBdhtml = newBdhtml + ' <script type="text/javascript" src="../../../jQueryGanttMaster/libs/jquery.livequery.min.js"><\/script>'; newBdhtml = newBdhtml + ' <script type="text/javascript" src="../../../jQueryGanttMaster/libs/jquery.timers.js"><\/script>'; newBdhtml = newBdhtml + ' <script type="text/javascript" src="../../../jQueryGanttMaster/libs/platform.js"><\/script>'; newBdhtml = newBdhtml + ' <script type="text/javascript" src="../../../jQueryGanttMaster/libs/date.js"><\/script>'; newBdhtml = newBdhtml + ' <script type="text/javascript" src="../../../jQueryGanttMaster/libs/i18nJs.js" charset="gbk"><\/script>'; newBdhtml = newBdhtml + ' <script type="text/javascript" src="../../../jQueryGanttMaster/libs/dateField/jquery.dateField.js"><\/script>'; newBdhtml = newBdhtml + ' <script type="text/javascript" src="../../../jQueryGanttMaster/libs/JST/jquery.JST.js"><\/script>'; newBdhtml = newBdhtml + ' <link rel="stylesheet" type="text/css" href="../../../jQueryGanttMaster/libs/jquery.svg.css">'; newBdhtml = newBdhtml + ' <script type="text/javascript" src="../../../jQueryGanttMaster/libs/jquery.svg.min.js"><\/script>'; newBdhtml = newBdhtml + ' <script type="text/javascript" src="../../../jQueryGanttMaster/libs/jquery.svgdom.1.8.js"><\/script>'; newBdhtml = newBdhtml + ' <script type="text/javascript" src="../../../jQueryGanttMaster/ganttUtilities.js"><\/script>'; newBdhtml = newBdhtml + ' <script type="text/javascript" src="../../../jQueryGanttMaster/ganttTask.js"><\/script>'; newBdhtml = newBdhtml + ' <script type="text/javascript" src="../../../jQueryGanttMaster/ganttDrawerSVG.js"><\/script>'; newBdhtml = newBdhtml + ' <script type="text/javascript" src="../../../jQueryGanttMaster/ganttGridEditor.js"><\/script>'; newBdhtml = newBdhtml + ' <script type="text/javascript" src="../../../jQueryGanttMaster/ganttMaster.js"><\/script>'; newBdhtml = newBdhtml + ' </head>'; newBdhtml = newBdhtml + ' <body class="easyui-layout">'; newBdhtml = newBdhtml + prnhtml; newBdhtml = newBdhtml + ' </body>'; newBdhtml = newBdhtml + '</html>'; var newwindow = window.open("", "甘特图打印"); //newwindow.document.write("abcdefg"); //newwindow.document.body.innerHTML = prnhtml; newwindow.document.write(newBdhtml); newwindow.print(); }
	</script>
	<div id="gantEditorTemplates" style="display: none;">
		<!-- 可替换 -->
		<div class="__template__" type="GANTBUTTONS">
			<div class="ganttButtonBar noprint">
				<%--<h1 style="float:left">task tree/gantt</h1>--%>
				<div class="buttons">
					<%--<button onclick="$('#workSpace').trigger('undo.gantt');" class="button textual" title="撤销"><span class="teamworkIcon">'</span></button> <button onclick="$('#workSpace').trigger('redo.gantt');" class="button textual" title="重做"><span class="teamworkIcon">·</span></button> <span class="ganttButtonSeparator"></span> <button onclick="$('#workSpace').trigger('addAboveCurrentTask.gantt');" class="button textual" title="上面插入"><span class="teamworkIcon">l</span></button> <button onclick="$('#workSpace').trigger('addBelowCurrentTask.gantt');" class="button textual" title="下面插入"><span class="teamworkIcon">X</span></button> <span class="ganttButtonSeparator"></span> <button onclick="$('#workSpace').trigger('indentCurrentTask.gantt');" class="button textual" title="留守空格"><span class="teamworkIcon">.</span></button> <button onclick="$('#workSpace').trigger('outdentCurrentTask.gantt');" class="button textual" title="非留守空格"><span class="teamworkIcon">:</span></button> <span class="ganttButtonSeparator"></span> <button onclick="$('#workSpace').trigger('moveUpCurrentTask.gantt');" class="button textual" title="上移"><span class="teamworkIcon">k</span></button> <button onclick="$('#workSpace').trigger('moveDownCurrentTask.gantt');" class="button textual" title="下移"><span class="teamworkIcon">j</span></button> <span class="ganttButtonSeparator"></span>--%>
					<button onclick="$('#workSpace').trigger('zoomMinus.gantt');"
						class="button textual" title="缩小">
						<span class="teamworkIcon">)</span>
					</button>
					<button onclick="$('#workSpace').trigger('zoomPlus.gantt');"
						class="button textual" title="放大">
						<span class="teamworkIcon">(</span>
					</button>
					<%--<span class="ganttButtonSeparator"></span>--%>
					<%--<button onclick="$('#workSpace').trigger('deleteCurrentTask.gantt');" class="button textual" title="删除"><span class="teamworkIcon">¢</span></button>--%>
					<span class="ganttButtonSeparator"></span>
					<%--<button onclick="printPage();" class="button textual" title="打印"><span class="teamworkIcon">p</span></button>--%>
					<button onclick="printPage();" title="打印">打印</button>
					<button onclick='exportMpp();' title="导出">导出</button>
					<%-- <span class="ganttButtonSeparator"></span>--%>
					<%--<button onclick="ge.gantt.showCriticalPath=!ge.gantt.showCriticalPath; ge.redraw();" class="button textual" title="Critical Path"><span class="teamworkIcon">£</span></button> <span class="ganttButtonSeparator"></span> <button onclick="editResources();" class="button textual" title="edit resources"><span class="teamworkIcon">M</span></button>         <button onclick="saveGanttOnServer();" class="button first big" title="保存">保存</button>--%>
				</div>
			</div>
		</div>
		<div class="__template__" type="TASKSEDITHEAD">
			<table class="gdfTable" cellspacing="0" cellpadding="0">
				<thead>
					<tr style="height: 40px">
						<th class="gdfColHeader" style="width: 35px;"></th>
						<th class="gdfColHeader" style="width: 25px;"></th>
						<th class="gdfColHeader gdfResizable" style="width: 0px;">任务编号</th>
						<th class="gdfColHeader gdfResizable" style="width: 300px;">任务名称</th>
						<th class="gdfColHeader gdfResizable" style="width: 80px;">开始</th>
						<th class="gdfColHeader gdfResizable" style="width: 80px;">结束</th>
						<th class="gdfColHeader gdfResizable" style="width: 50px;">工期</th>
						<th class="gdfColHeader gdfResizable" style="width: 50px;">前置任务</th>
						<%--<th class="gdfColHeader gdfResizable" style="width:200px;">负责人</th>--%>
					</tr>
				</thead>
			</table>
		</div>
		<div class="__template__" type="TASKROW">
			<!-- <tr taskId="(#=obj.id#)" class="taskEditRow" level="(#=level#)"> <th class="gdfCell edit" align="right" style="cursor:pointer;"><span class="taskRowIndex">(#=obj.getRow()+1#)</span> <span class="teamworkIcon" style="font-size:12px;" >e</span></th> <td class="gdfCell noClip" align="center"><div class="taskStatus cvcColorSquare" status="(#=obj.status#)"></div></td> <td class="gdfCell"><input type="text" name="code" value="(#=obj.code?obj.code:''#)"></td> <td class="gdfCell indentCell" style="padding-left:(#=obj.level*10#)px;"> <div class="(#=obj.isParent()?'exp-controller expcoll exp':'exp-controller'#)" align="center"></div> <input type="text" name="name" value="(#=obj.name#)"> </td> <td class="gdfCell"><input type="text" name="start" value="" class="date"></td> <td class="gdfCell"><input type="text" name="end" value="" class="date"></td> <td class="gdfCell"><input type="text" name="duration" value="(#=obj.duration#)"></td> <td class="gdfCell"><input type="text" name="depends" value="(#=obj.depends#)" (#=obj.hasExternalDep?"readonly":""#)></td> <td class="gdfCell taskAssigs">(#=obj.getAssigsString()#)</td> </tr> -->
		</div>
		<div class="__template__" type="TASKEMPTYROW">
			<!-- <tr class="taskEditRow emptyRow" > <th class="gdfCell" align="right"></th> <td class="gdfCell noClip" align="center"></td> <td class="gdfCell"></td> <td class="gdfCell"></td> <td class="gdfCell"></td> <td class="gdfCell"></td> <td class="gdfCell"></td> <td class="gdfCell"></td> <td class="gdfCell"></td> </tr> -->
		</div>
		<div class="__template__" type="TASKBAR">
			<!-- <div class="taskBox taskBoxDiv" taskId="(#=obj.id#)" > <div class="layout (#=obj.hasExternalDep?'extDep':''#)"> <div class="taskStatus" status="(#=obj.status#)"></div> <div class="taskProgress" style="width:(#=obj.progress>100?100:obj.progress#)%; background-color:(#=obj.progress>100?'red':'rgb(153,255,51);'#);"></div> <div class="milestone (#=obj.startIsMilestone?'active':''#)" ></div> <div class="taskLabel"></div> <div class="milestone end (#=obj.endIsMilestone?'active':''#)" ></div> </div> </div> -->
		</div>
		<div class="__template__" type="CHANGE_STATUS">
			<!-- <div class="taskStatusBox"> <div class="taskStatus cvcColorSquare" status="STATUS_ACTIVE" title="active"></div> <div class="taskStatus cvcColorSquare" status="STATUS_DONE" title="completed"></div> <div class="taskStatus cvcColorSquare" status="STATUS_FAILED" title="failed"></div> <div class="taskStatus cvcColorSquare" status="STATUS_SUSPENDED" title="suspended"></div> <div class="taskStatus cvcColorSquare" status="STATUS_UNDEFINED" title="undefined"></div> </div> -->
		</div>
		<div class="__template__" type="TASK_EDITOR">
			<!-- <div class="ganttTaskEditor"> <table width="100%"> <tr> <td> <table cellpadding="5"> <tr> <td><label for="code">code/short name</label><br><input type="text" name="code" id="code" value="" class="formElements"></td> </tr><tr> <td><label for="name">name</label><br><input type="text" name="name" id="name" value="" size="35" class="formElements"></td> </tr> <tr></tr> <td> <label for="description">description</label><br> <textarea rows="5" cols="30" id="description" name="description" class="formElements"></textarea> </td> </tr> </table> </td> <td valign="top"> <table cellpadding="5"> <tr> <td colspan="2"><label for="status">status</label><br><div id="status" class="taskStatus" status=""></div></td> <tr> <td colspan="2"><label for="progress">progress</label><br><input type="text" name="progress" id="progress" value="" size="3" class="formElements"></td> </tr> <tr> <td><label for="start">start</label><br><input type="text" name="start" id="start" value="" class="date" size="10" class="formElements"><input type="checkbox" id="startIsMilestone"> </td> <td rowspan="2" class="graph" style="padding-left:50px"><label for="duration">dur.</label><br><input type="text" name="duration" id="duration" value="" size="5" class="formElements"></td> </tr><tr> <td><label for="end">end</label><br><input type="text" name="end" id="end" value="" class="date" size="10" class="formElements"><input type="checkbox" id="endIsMilestone"></td> </table> </td> </tr> </table> <h2>assignments</h2> <table cellspacing="1" cellpadding="0" width="100%" id="assigsTable"> <tr> <th style="width:100px;">name</th> <th style="width:70px;">role</th> <th style="width:30px;">est.wklg.</th> <th style="width:30px;" id="addAssig"><span class="teamworkIcon" style="cursor: pointer">+</span></th> </tr> </table> <div style="text-align: right; padding-top: 20px"><button id="saveButton" class="button big">save</button></div> </div> -->
		</div>
		<div class="__template__" type="ASSIGNMENT_ROW">
			<!-- <tr taskId="(#=obj.task.id#)" assigId="(#=obj.assig.id#)" class="assigEditRow" > <td ><select name="resourceId" class="formElements" (#=obj.assig.id.indexOf("tmp_")==0?"":"disabled"#) ></select></td> <td ><select type="select" name="roleId" class="formElements"></select></td> <td ><input type="text" name="effort" value="(#=getMillisInHoursMinutes(obj.assig.effort)#)" size="5" class="formElements"></td> <td align="center"><span class="teamworkIcon delAssig" style="cursor: pointer">d</span></td> </tr> -->
		</div>
		<div class="__template__" type="RESOURCE_EDITOR">
			<!-- <div class="resourceEditor" style="padding: 5px;"> <h2>Project team</h2> <table cellspacing="1" cellpadding="0" width="100%" id="resourcesTable"> <tr> <th style="width:100px;">name</th> <th style="width:30px;" id="addResource"><span class="teamworkIcon" style="cursor: pointer">+</span></th> </tr> </table> <div style="text-align: right; padding-top: 20px"><button id="resSaveButton" class="button big">save</button></div> </div> -->
		</div>
		<div class="__template__" type="RESOURCE_ROW">
			<!-- <tr resId="(#=obj.id#)" class="resRow" > <td ><input type="text" name="name" value="(#=obj.name#)" style="width:100%;" class="formElements"></td> <td align="center"><span class="teamworkIcon delRes" style="cursor: pointer">d</span></td> </tr> -->
		</div>
	</div>
	<script type="text/javascript">
		$.JST.loadDecorator("ASSIGNMENT_ROW", function(assigTr, taskAssig) {
			var resEl = assigTr.find("[name=resourceId]");
			for ( var i in taskAssig.task.master.resources) {
				var res = taskAssig.task.master.resources[i];
				var opt = $("<option>");
				opt.val(res.id).html(res.name);
				if (taskAssig.assig.resourceId == res.id)
					opt.attr("selected", "true");
				resEl.append(opt);
			}
			var roleEl = assigTr.find("[name=roleId]");
			for ( var i in taskAssig.task.master.roles) {
				var role = taskAssig.task.master.roles[i];
				var optr = $("<option>");
				optr.val(role.id).html(role.name);
				if (taskAssig.assig.roleId == role.id)
					optr.attr("selected", "true");
				roleEl.append(optr);
			}
			if (taskAssig.task.master.canWrite && taskAssig.task.canWrite) {
				assigTr.find(".delAssig").click(
						function() {
							var tr = $(this).closest("[assigId]").fadeOut(200,
									function() {
										$(this).remove();
									});
						});
			}
		});
	</script>
</body>
</html>
