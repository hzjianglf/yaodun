<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<%--   <jsp:include page="layout.jsp"></jsp:include>   --%>

<title>Insert title here</title>
</head>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<link href="<%=basePath%>resources/mainpage/css/bootstrap.min.css"
	rel="stylesheet" />
<link
	href="<%=basePath%>resources/mainpage/css/bootstrap-responsive.min.css"
	rel="stylesheet" />
<link href="<%=basePath%>resources/css/main.css" rel="stylesheet" />
<link href="<%=basePath%>resources/mainpage/css/font-awesome.css"
	rel="stylesheet" />

<link href="<%=basePath%>resources/mainpage/css/adminia.css"
	rel="stylesheet" />
<link href="<%=basePath%>resources/mainpage/css/adminia-responsive.css"
	rel="stylesheet" />

<link href="<%=basePath%>resources/mainpage/css/pages/dashboard.css"
	rel="stylesheet" />
<link href="<%=basePath%>resources/css/main.css" rel="stylesheet" />
<link href="<%=basePath%>resources/css/placeholder.css" rel="stylesheet"/> 
  <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
     <script src="<%=basePath%>resources/js/html5shiv.js"></script>
    <![endif]-->
	


<div style="display: none;">
	<table>
		<tr id="useToInsert">
			<td id="id"></td>
			<td><input type="text" name="drugname" id="drugname"
			 maxlength="40" class="input-medium" real-value=""
				style="width: 95%" /></td>

			<td><input type="text" name="usage" id="usage"
				placeholder="" maxlength="40" class="input-medium"
				style="width: 95%" /></td>
			<td><input type="text" name="dosage" id="dosage"
				placeholder="" maxlength="40" class="input-control"
				style="width: 65%" /><span class="input-group-addon"  id="unitinit" ></span></td>
			<td><input type="text" name="frequery" id="frequery"
				placeholder="" maxlength="40" class="input-medium"
				style="width: 95%" /></td>
			<td class="action-td"><a
				class="btn btn-small btn-warning icon-plus"> </a> <a
				class="btn btn-small btn-dufault icon-remove"></a></td>

		</tr>
	</table>
</div>

<div class="navbar navbar-fixed-top">

	<div class="navbar-inner">

		<div class="container">

			<a class="btn btn-navbar" data-toggle="collapse"
				data-target=".nav-collapse"> <span class="icon-bar"></span> <span
				class="icon-bar"></span> <span class="icon-bar"></span>
			</a> <a class="brand" href="./">Adminia Admin</a>

			<div class="nav-collapse">

			 <ul class="nav pull-right">
					
					<li class="divider-vertical"></li>

					<li class="dropdown"><a data-toggle="dropdown"  
						class="dropdown-toggle " href="#" style="color: black; "> Rod Howard <b class="caret" style="color: black;"></b>
					</a>

						<ul class="dropdown-menu">
							<li><a href="/yaodun/User/account"><i class="icon-user"></i>
									注册</a></li>

							<li><a href="./change_password.html"><i
									class="icon-lock"></i> Change Password</a></li>

							<li class="divider"></li>

							<li><a href="/yaodun/User/loginOut"><i class="icon-off"></i> 注销</a></li>
						</ul>
						</li>
				</ul> 

			</div>
			<!-- /nav-collapse -->

		</div>
		<!-- /container -->

	</div>
	<!-- /navbar-inner -->

</div>
<!-- /navbar -->
<div id="content">
	<div class="container">

		<div class="row">

			<div class="span3">

				<div class="account-container">

					<!-- /account-avatar -->

				<!-- 	<div class="account-details">

						<span class="account-name">Rod Howard</span> <span
							class="account-role">Administrator</span> <span
							class="account-actions"> <a href="javascript:;">Profile</a>
							| <a href="javascript:;">Edit Settings</a>
						</span>

					</div> -->
					<!-- /account-details -->

				</div>
				<!-- /account-container -->

				<!-- <hr /> -->

				<ul id="main-nav" class="nav nav-tabs nav-stacked">

					<li class="active"><a href="./"> <i class="icon-home"></i>
							Dashboard
					</a></li>

					<li><a data-toggle="collapse" data-parent="#accordion2"
						href="#collapseOne"> <i class="icon-pushpin"></i> 基本信息
					</a>
						<div id="collapseOne" class="accordion-body collapse"
							style="height: 0px;">
							<form id ="otherInformation" class="table table-striped table-bordered" style="background-color:white;">
							<div class="accordion-inner" style="border: 2px">
								<div class="control-group">
									<label class="control-label" for="accounttype">性别</label>
								</div>
									<div class="control-group">

										<label class="radio"> <input type="radio"
											name="gender" value="1" checked="checked" id="male" /> 男
										</label> <label class="radio"> <input type="radio"
											name="gender" value="1" id="female" /> 女
										</label>

									</div>
									<div class="control-group">
									<div class="controls">
										<label for="control-label">年龄</label> 
										<select style="width:190px" id="age">
											<option value="0">不详</option>
											<option value="1">&lt;16岁</option>
											<option value="2">16~50岁</option>
											<option value="3">&gt;60岁</option>
										</select>
									</div>
								</div>
								<div class="control-group">
									<label class="control-label" for="accountpassword">身高</label>
									<div class="input-group" >
										<input type="text" class="input-control" style="width: 140px" id="height"  data-toggle="tooltip" title="http://www.nenew.net">
										<span class="input-group-addon">cm</span>
									</div>

								</div>
								<div class="control-group">
									<label class="control-label" for="accountpassword">体重</label>
									<div class="input-group">
										<input type="text" class="input-control" style="width: 140px" id="weight"/>
										<span class="input-group-addon">kg</span>
									</div>
								</div>
								<div class="control-group">
									<div class="controls">
										<label for="control-label">肝功能</label> <select style="width:190px" id="isLiver">
											<option value="0">正常</option>
											<option value="1">轻中度</option>
											<option value="2">重度</option>
										</select>
									</div>
								</div>
								<div class="control-group">
									<div class="controls">
										<label for="control-label">肾功能</label> <select style="width:190px"  id="gfr">
											<option value="0">正常</option>
											<option value="1">肾小球滤过率每分钟大于50</option>
											<option value="2">肾小球滤过率每分钟10~50</option>
											<option value="3">肾小球滤过率每分钟小于10</option>
										</select>
									</div>
								</div>
							</div>
							 </form>
						</div></li>

					<!--  <li><a href="./plans.html"> <i class="icon-th-list"></i>
							Pricing Plans
					</a></li>

					<li><a href="./grid.html"> <i class="icon-th-large"></i>
							Grid Layout <span class="label label-warning pull-right">5</span>
					</a></li>

					<li><a href="./charts.html"> <i class="icon-signal"></i>
							Charts
					</a></li>

					<li><a href="./account.html"> <i class="icon-user"></i>
							User Account
					</a></li>

					<li><a href="./login.html"> <i class="icon-lock"></i>
							Login
					</a></li>  -->

				</ul>

				<hr />
				
				<div class="sidebar-extra">
					<p>临床用药既要根据药物的药理作用，也要考虑病人实际情况，做到因人施治。影响药物作用的机体因素主要包括：年龄、性别、病理状态、精神因素、遗传因素和营养状态等。</p>
				</div> <!-- .sidebar-extra -->


				<br />

			</div>
			<!-- /span3 -->

			<div class="span9">

				<h1 class="page-title">
					<i class="icon-home"></i> Dashboard1s
				</h1>
				<ul >
				<li>
					<a href="#">主页</a> <span class="divider">/</span>
				</li>
				<li>
					<a href="#">类目</a> <span class="divider">/</span>
				</li>
				<li class="active">
					主题
				</li>
			</ul>
				
				<div class="widget widget-table">

					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>Table</h3>
					</div>
					<!-- /widget-header -->

					<div class="widget-content">

						<table class="table table-striped table-bordered" id="drugtable">
							<thead>
								<tr>
									<th>#</th>
									<th>药品名称</th>
									<th>用法</th>
									<th>用量</th>
									<th>频次</th>
									<th>&nbsp;</th>
								</tr>
							</thead>

							<tbody id="druginfo">
								<tr>
									<td>1</td>
									<td><input type="text" name="drugname" id="drugnameinit"
										placeholder="药品通用名" maxlength="40" real-value=""
										class="input-medium" style="width: 95%"/></td>
									<td><input type="text" name="usage" id="usageinit"
										placeholder="" maxlength="40"
										class="input-medium" style="width: 95%" /></td>
									<td ><input type="text" name="dosage" id="dosageinit"
										placeholder="" maxlength="40"
										class="input-control" style="width: 65%" />
										<span class="input-group-addon" id="unitinit" ></span>
										</td>
									<td><input type="text" name="frequery" id="frequeryinit"
										placeholder="" maxlength="40"
										class="input-medium" style="width: 95%" /></td>
									<td class="action-td"><a
										class="btn btn-small btn-warning icon-plus"> </a> <a
										class="btn btn-small btn-dufault icon-refresh"> </a></td>
							</tbody>


						</table>


					</div>
					<div class="widget-header" align="center">

						<div class="plan-actions">
							<a class=" btn btn-primary" data-toggle="modal" id="check">药品检测</a>
						</div>
						<!-- Modal -->
						<div class="modal fade" id="checkResult" tabindex="-1"
							>
							<div class="modal-dialog ">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											>&times;</button>
										<h2 class="modal-title" id="myModalLabel">检测结果</h2>
									</div>
									<div class="modal-body" id="result" align="left">...</div>
									<div class="modal-footer">
										<!-- <button type="button" class="btn btn-primary"
											data-dismiss="modal">Close</button> -->
										<!-- <button type="button" class="btn btn-primary"  >Save
											changes</button>  -->
									</div>
								</div>
								<!-- /.modal-content -->
							</div>
							<!-- /.modal-dialog -->
						</div>
						<!-- /.modal -->



					</div>
					<!-- /widget-content -->

				</div>
				<!-- /widget -->





				<div class="row">

					<div class="span5">

						<div class="widget" >

							<div class="widget-header" style="background-color: rgb(60, 141, 188) " >
								<h3 >用药标准</h3>
							</div>
							<!-- /widget-header -->

							<div class="widget-content " >
								<p>WHO 1987年提出合理用药的标准是：
　　								<p>（1）处方的药应为适宜的药物。
　　								<p>（2）在适宜的时间，以公众能支付的价格保证药物供应。
　　								<p>（3）正确地调剂处方。
　　								<p>（4）以准确的剂量，正确的用法和疗程服用药物。
　　								<p>（5）确保药物质量安全有效。</p>
							</div>
							<!-- /widget-content -->

						</div>
						<!-- /widget -->

					</div>
					<!-- /span5 -->

					<div class="span4">

						<div class="widget">

							<div class="widget-header" style="background-color: rgb(0, 166, 90)">
								<h3>合理用药</h3>
							</div>
							<!-- /widget-header -->

							<div class="widget-content" >
								<p>合理用药是合理用药是指安全、有效、经济地使用药物。以当代药物和疾病的系统知识为基础，根据疾病种类、患者状况和药理学理论选择最佳的药物及其制剂，制定或调整给药方案，以期有效、安全、经济地防治和治愈疾病的措施。</p>
							</div>
							<!-- /widget-content -->

						</div>
						<!-- /widget -->
					</div>
					<!-- /span4 -->

				</div>
				<!-- /row -->

			</div>
		</div>
		<!--row  -->
	</div>
	<!-- container -->
</div>
<!-- content -->
<div id="footer">

	<div class="container">
		<hr />
		<p>&copy; 2014 Go Ideate.</p>
	</div>
	<!-- /container -->

</div>
<!-- /footer -->

<script src="<%=basePath%>resources/js/jquery.js"></script>
<script src="<%=basePath%>resources/bootstrap/dist/js/bootstrap.js"></script>
<script src="<%=basePath%>resources/js/bootstrap-collapse.js"></script>
<script	src="<%=basePath%>resources/bootstrap/dist/js/bootstrap.autocomplete.js"></script>
<script src="<%=basePath%>resources/js/json2.js"></script>
<script src="<%=basePath%>resources/js/respond.min.js"></script>
<script src="<%=basePath%>resources/js/placeholder.js"></script>
<script type="text/javascript">
$(document).ready(
	function () {
		 //使ie能用placeholder;
        initPlaceHolders();
		
	//点击的时候取数据
	$("#check").click(function () {
		var tableArr = []; //存所有数据
		var baseinfo={};
		//收集基本信息
			$("#otherInformation").each(function(){
				$("input,select",this)
					.each(function(){
						//如果非下拉选择框直接把内容加入数组
						if (typeof($(this).attr("checked")) == "undefined"){
							baseinfo[$(this).attr("id")] = $(this).val();
						}else{
							
							if($(this).attr("checked")!="checked"){
								baseinfo[$(this).attr("id")] = $(this).val();	
							}else{
								baseinfo[$(this).attr("id")] = 0;	
							}
						}
					});
			});
		var	base = JSON.stringify(baseinfo);	
			tableArr.push(base);
			//收集药品相关数据
		$("#drugtable tr:not(:first)").each(
			function () { //遍历除标题行外所有行
			var trArr = {}; //json对象数据
			$("input,select",this).each(function () {
				if (typeof($(this).attr("real-value")) == "undefined") {
					trArr[$(this).attr("name")] = $(this).val();
				} else {
					//确保数据选择的内容与id不致
					trArr[$(this).attr("name")] = $(this).attr("real-value");
				}
				//遍历行内的input select的值
			});
			var str = JSON.stringify(trArr);
			tableArr.push(str); //行数据格式
		});
		modelshow(tableArr);
	});

	function modelshow(datas) {
		$.ajax({
			type : "post", 
			url : "/yaodun/DrugBasicCheck/drugCheck",
			data : {'datas[]' : datas},
			datatype : "json",
			success : function (msg) // msg是返回的信息
			{ // 在这里拼接数据并组装成表格
				var checkresult = "";
				var tags = "</br>";
				var talbe ="<table class='table table-striped table-bordered' id='resulttable'><thead><tr><th width ='60px'>严重级别</th><th>检测结果</th></tr><tbody>";
				var ban ="";
				var caution="";
				var warn ="";
				var start="<tr><td align='center' valign='middle'>";
				var middle ="</td><td>";
				var end ="</td></tr>";
				//把提示级别相同的数据放一起
				for (var i = 0; i < msg.length; i++) {
					if (msg[i].grade=="禁用"){
						warn += msg[i].type+msg[i].result + tags;
					}else if(msg[i].grade=="慎用"){
						caution +=  msg[i].type+msg[i].result + tags;
					}else if(msg[i].grade=="提示"){
						ban +=  msg[i].type+msg[i].result + tags;
						
					}

				}
				if(warn!=""){
					warn= start+"禁用"+middle+warn+end;
				}
				if(caution!=""){
					caution= start+"慎用"+middle+caution+end;
				}
				if(ban!=""){
					ban= start+"提示"+middle+ban+end;
				}
				checkresult =warn+caution+ban;
				checkresult =talbe+checkresult+"</tbody></table>";
				$("#result").html(checkresult);
				if (msg.length > 0) {
					$('#checkResult').modal('show');
				}

			},
			error : function () {}
		});

	}

	//自动完成药品加载
	function drugInitAutocomplete(id) {
		$(id)
		.autocomplete({
			source : function (query,
				process) {
				this.$element.parent().parent().find("#unitinit").text("");
				this.$element.attr('real-value',"");
				var matchCount = this.options.items; //返回结果集最大数量
				$.post("/yaodun/DrugBasicCheck/searchDrug/"+query, {"matchInfo" : query,"matchCount" : matchCount},
					function (respData) {
					return process(respData);
				});
			},
			formatItem : function (item) {
				//return item["id"]+"("+item["drugname"]+"，"+item["symbol"]+") ";
				return "("+ item["drugname"]+ "，"+ item["symbol"]+ ") ";
			},
			setValue : function (item) {
				return {'data-value' : item["drugname"],'real-value' : item["basicid"]+ "_"+item["drugname"],"unit":item["unit"]
				};
			},select:function(){//因为前台需求添加单位在这里加上select.
				 var val = this.$menu.find('.active').attr('data-value');
				 var unit = this.$menu.find('.active').attr('unit');
				  var realVal = this.$menu.find('.active').attr('real-value');
			     this.$element.val(this.updater(val)).attr("real-value",realVal).change();
			     this.$element.parent().parent().find("#unitinit").text(unit);
			      return this.hide();
			}
				
		});
	}
	//自动完成用法加载
	function usageInitAutocomplete(id) {
		$(id)
		.autocomplete({
			source : function (query,
				process) {
				var matchCount = this.options.items; //返回结果集最大数量
				$.post("/yaodun/DrugBasicCheck/searchUsage/"+query, {"matchInfo" : query,"matchCount" : matchCount},
					function (respData) {
					return process(respData);
				});
			},
			formatItem : function (item) {
				//return item["id"]+"("+item["drugname"]+"，"+item["symbol"]+") ";
				return "(" + item["name"]+ "，"+ item["symbol"]+ ") ";
			},
			setValue : function (item) {
				return {'data-value' : item["name"],'real-value' : item["id"],};
			}
		});
	}
	function frequencyInitAutocomplete(id) {
		$(id).autocomplete({
			source : function (query,process) {
				var matchCount = this.options.items; //返回结果集最大数量
				$.post("/yaodun/DrugBasicCheck/searchFrequency/"+query, {"matchInfo" : query,"matchCount" : matchCount},
					function (respData) {
					return process(respData);
				});
			},//格式化下拉列表显示的内容
			formatItem : function (item) {
				//return item["id"]+"("+item["drugname"]+"，"+item["symbol"]+") ";
				return "(" + item["name"] + "，"	 + item["symbol"] + ") ";
			},
			//选择以后赋值
			setValue : function (item) {
				return {'data-value' : item["name"],'real-value' : item["id"]};
			}
		});
	}
      //初始化第一行数据的药品，用法，频次下次列表框
	drugInitAutocomplete("#drugnameinit");
	usageInitAutocomplete("#usageinit");
	frequencyInitAutocomplete("#frequeryinit");

	//复制一行
	var temp;
	temp = $("#useToInsert");
	var cloneNum = 1;
	$(".btn-warning").click(

		function () {
		var clonetemp = temp.clone(true);
		clonetemp.appendTo($("#druginfo"));
		clonetemp.attr("id", "useToInsert" + cloneNum);
		clonetemp.find("#id").html($("#druginfo tr").length);//查找table有多少个tr则数字为几
		clonetemp.find("#drugname").attr("id","drugname" + cloneNum);
		clonetemp.find("#dosage").attr("id","dosage" + cloneNum);
		clonetemp.find("#usage").attr("id","usage" + cloneNum);
		clonetemp.find("#frequery").attr("id","frequery" + cloneNum);
		clonetemp.find("#delete").attr("id","delete1" + cloneNum);
		var drugid = "#drugnameX".replace("X",cloneNum);
		var usageId = "#usageX".replace("X",cloneNum);
		var frequeryid = "#frequeryX".replace("X",cloneNum);
		//初始化药品，用法，频次下拉查询框
		drugInitAutocomplete(drugid);
		usageInitAutocomplete(usageId);
		frequencyInitAutocomplete(frequeryid);
		cloneNum++;
	});
	//删除一行
	$(".icon-remove").click(function () {
		$(this).parent().parent().remove();
		//重新编号table里面的编号
		var num =2;
		$("#drugtable tr:not(:first)").each(function(){
			$("td",this).each(function () {
				if (typeof($(this).attr("id")) != "undefined") {
					$(this).html(num);
					num++;
				}
			});
		});
	});

});

</script>

</html>