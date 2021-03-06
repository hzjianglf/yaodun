<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
<jsp:include page="../layout.jsp"></jsp:include>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="stilearning" />
<link href="http://fonts.googleapis.com/css?family=Aclonica:regular"
	rel="stylesheet" type="text/css" />
      
      

</head>
<body>
<body>
	<!-- section header -->
	<header class="header">
		<!--nav bar helper-->
		<div class="navbar-helper">
			<div class="row-fluid">
				<!--panel site-name-->
				<div class="span2">
					<div class="panel-sitename">
						<h2>
							<a href="index.html"><span class="color-teal">Shy</span>Shine</a>
						</h2>
					</div>
				</div>
				<!--/panel name-->

				<div class="span6">
					<!--panel search-->
					<div class="panel-search">
						<form class="form-search" />
						<div class="input-icon-append">
							<button type="submit" rel="tooltip-bottom" title="search"
								class="icon">
								<i class="icofont-search"></i>
							</button>
							<input class="input-large search-query grd-white" maxlength="23"
								placeholder="Search here..." type="text" />
						</div>
						</form>
					</div>
					<!--/panel search-->
				</div>
				<div class="span4">
					<!--panel button ext-->
					<div class="panel-ext">


						<div class="btn-group">
							<a class="btn btn-inverse btn-small dropdown-toggle"
								data-toggle="dropdown" href="#"> Shortcut </a>
							<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
								<li><a tabindex="-1" href="calendar.html">Calendar</a></li>
								<li><a tabindex="-1" href="invoice.html">Invoice</a></li>
								<li><a tabindex="-1" href="message.html">Message</a></li>
								<li class="divider"></li>
								<li class="dropdown-submenu"><a tabindex="-1" href="#">Sample
										Page</a>
									<ul class="dropdown-menu">
										<li><a tabindex="-1" href="pricing.html">Pricing</a></li>
										<li><a tabindex="-1" href="bonus-page/resume/index.html">Resume</a></li>
									</ul></li>
								<li class="dropdown-submenu"><a tabindex="-1" href="#">Error
										Page</a>
									<ul class="dropdown-menu">
										<li><a tabindex="-1" href="403.html">Error 403</a></li>
										<li><a tabindex="-1" href="404.html">Error 404</a></li>
										<li><a tabindex="-1" href="405.html">Error 405</a></li>
										<li><a tabindex="-1" href="500.html">Error 500</a></li>
										<li><a tabindex="-1" href="503.html">Error 503</a></li>
										<li><a tabindex="-1" href="under-construction.html">Under
												Construction</a></li>
										<li><a tabindex="-1" href="coming-son.html">Coming
												Son</a></li>
									</ul></li>
								<li class="divider"></li>
								<li><a tabindex="-1" href="#">Something else here</a></li>
							</ul>
						</div>
						<div class="btn-group">
							<a class="btn btn-inverse btn-small" href="#">Other Action</a>
						</div>
						<div class="btn-group user-group">
							<a class="dropdown-toggle" data-toggle="dropdown" href="#"> <img
								class="corner-all" align="middle"
								src="<%=basePath%>resources/img/user-thumb.jpg" title="John Doe"
								alt="john doe" /> <!--this for display on PC device-->
								<button class="btn btn-small btn-inverse">${user.userName}</button>
								<!--this for display on tablet and phone device-->
							</a>
							<ul class="dropdown-menu dropdown-user" role="menu"
								aria-labelledby="dLabel">
								<li>
									<div class="media">
										<a class="pull-left" href="#"> <img class="img-circle"
											src="<%=basePath%>resources/img/user.jpg" title="profile"
											alt="profile" />
										</a>
										<div class="media-body description">
											<p>
												<strong>${user.userName}</strong>
											</p>
											<p class="muted">${user.email}</p>
											<!--  <a href="bonus-page/resume/index.html" class="btn btn-primary btn-small btn-block">View Profile</a> -->
										</div>
									</div>
								</li>
								<li class="dropdown-footer">
									<div>
										<a class="btn btn-small pull-right" href="login.html">Logout</a>
										<a class="btn btn-small" href="#">Add Account</a>
									</div>
								</li>
							</ul>
						</div>
					</div>
					<!--panel button ext-->
				</div>
			</div>
		</div>
		<!--/nav bar helper-->
	</header>
	
        <!-- section content -->
        <section class="section">
            <div class="row-fluid">
                <!-- span side-left -->
                <div class="span1">
                    <!--side bar-->
                    <aside class="side-left">
                        <ul class="sidebar">
                            <li class="active first"> <!--always define class .first for first-child of li element sidebar left-->
                                <a href="index.html" title="dashboard">
                                    <div class="helper-font-24">
                                        <i class="icofont-dashboard"></i>
                                    </div>
                                    <span class="sidebar-text">Dashboard</span>
                                </a>
                            </li>
                            <li>
                                <a href="interface.html" title="interface">
                                    <div class="helper-font-24">
                                        <i class="icofont-magnet"></i>
                                    </div>
                                    <span class="sidebar-text">Interface</span>
                                </a>
                            </li>
                            <li>
                                <a href="/shyShine/jsp/result/mainResult.jsp" title="form">
                                    <div class="badge badge-important">3</div>
                                    <div class="helper-font-24">
                                        <i class="icofont-edit"></i>
                                    </div>
                                    <span class="sidebar-text">Form</span>
                                </a>
                                <ul class="sub-sidebar-form corner-top shadow-white">
                                    <li class="title muted">Quick Upload</li>
                                    <li>
                                        <input type="file" data-form="uniform" onchange="alert('your progres uploading file...')" />
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="form.html" title="form element" class="corner-all">
                                            <i class="icofont-file"></i>
                                            <span class="sidebar-text">Form Element</span>
                                        </a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="code_editor.html" title="code editor" class="corner-all">
                                            <i class="icofont-book"></i>
                                            <span class="sidebar-text">Code Editor</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="gallery.html" title="gallery" class="corner-all">
                                            <i class="icofont-picture"></i>
                                            <span class="sidebar-text">Gallery</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="charts.html" title="charts">
                                    <div class="helper-font-24">
                                        <i class="icofont-bar-chart"></i>
                                    </div>
                                    <span class="sidebar-text">charts</span>
                                </a>
                            </li>
                            <li>
                                <a href="tables.html" title="table">
                                    <div class="helper-font-24">
                                        <i class="icofont-table"></i>
                                    </div>
                                    <span class="sidebar-text">Tables</span>
                                </a>
                            </li>
                            <li>
                                <a href="grids.html" title="grids">
                                    <div class="helper-font-24">
                                        <i class="icofont-columns"></i>
                                    </div>
                                    <span class="sidebar-text">Grids</span>
                                </a>
                            </li>
                            <li>
                                <a href="icons.html" title="icons">
                                    <div class="helper-font-24">
                                        <i class="icofont-star"></i>
                                    </div>
                                    <span class="sidebar-text">Icons</span>
                                </a>
                            </li>
                            <li>
                                <a href="widgets.html" title="widgets">
                                    <div class="helper-font-24">
                                        <i class="icofont-reorder"></i>
                                    </div>
                                    <span class="sidebar-text">Widgets</span>
                                </a>
                            </li>
                            <li>
                                <a href="#" title="more">
                                    <div class="badge badge-important">5</div>
                                    <div class="helper-font-24">
                                        <i class="icofont-th-large"></i>
                                    </div>
                                    <span class="sidebar-text">More</span>
                                </a>
                                <ul class="sub-sidebar corner-top shadow-silver-dark">
                                    <li>
                                        <a href="404.html" title="not found">
                                            <div class="helper-font-24">
                                                <i class="icofont-warning-sign"></i>
                                            </div>
                                            <span class="sidebar-text">404</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="login.html" title="login">
                                            <div class="helper-font-24">
                                                <i class="icofont-lock"></i>
                                            </div>
                                            <span class="sidebar-text">Login</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="invoice.html" title="invoice">
                                            <div class="helper-font-24">
                                                <i class="icofont-barcode"></i>
                                            </div>
                                            <span class="sidebar-text">Invoice</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="pricing.html" title="pricing table">
                                            <div class="helper-font-24">
                                                <i class="icofont-briefcase"></i>
                                            </div>
                                            <span class="sidebar-text">Pricing</span>
                                        </a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="bonus-page/resume/index.html" title="resume">
                                            <div class="helper-font-24">
                                                <i class="icofont-user"></i>
                                            </div>
                                            <span class="sidebar-text">Resume</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </aside><!--/side bar -->
                </div><!-- span side-left -->
                
                <!-- span content -->
                <div class="span9">
                    <!-- content -->
                    <div class="content">
                       
                        </div><!--/content-body -->
                    </div><!-- /content -->
                </div><!-- /span content -->
                
                <!-- span side-right -->
                <div class="span2">
                    
                </div><!-- /span side-right -->
            </div>
        </section>

        <footer>
            <a rel="to-top" href="#top"><i class="icofont-circle-arrow-up"></i></a>
        </footer>
</body>
<script type="text/javascript">
$(document).ready(function() {
    
});

</script>
</html>