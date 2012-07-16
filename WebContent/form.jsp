<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Internet Dreams</title>
<link rel="stylesheet" href="css/screen.css" type="text/css"
	media="screen" title="default" />
<!--[if IE]>
<link rel="stylesheet" media="all" type="text/css" href="css/pro_dropline_ie.css" />
<![endif]-->

<!--  jquery core -->
<script src="js/jquery/jquery-1.4.1.min.js" type="text/javascript"></script>

<!--  checkbox styling script -->
<script src="js/jquery/ui.core.js" type="text/javascript"></script>
<script src="js/jquery/ui.checkbox.js" type="text/javascript"></script>
<script src="js/jquery/jquery.bind.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function() {
		$('input').checkBox();
		$('#toggle-all').click(function() {
			$('#toggle-all').toggleClass('toggle-checked');
			$('#mainform input[type=checkbox]').checkBox('toggle');
			return false;
		});
	});
</script>


<![if !IE 7]>

<!--  styled select box script version 1 -->
<script src="js/jquery/jquery.selectbox-0.5.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.styledselect').selectbox({
			inputClass : "selectbox_styled"
		});
	});
</script>


<![endif]>


<!--  styled select box script version 2 -->
<script src="js/jquery/jquery.selectbox-0.5_style_2.js"
	type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.styledselect_form_1').selectbox({
			inputClass : "styledselect_form_1"
		});
		$('.styledselect_form_2').selectbox({
			inputClass : "styledselect_form_2"
		});
	});
</script>

<!--  styled select box script version 3 -->
<script src="js/jquery/jquery.selectbox-0.5_style_2.js"
	type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.styledselect_pages').selectbox({
			inputClass : "styledselect_pages"
		});
	});
</script>

<!--  styled file upload script -->
<script src="js/jquery/jquery.filestyle.js" type="text/javascript"></script>
<script type="text/javascript" charset="utf-8">
	$(function() {
		$("input.file_1").filestyle({
			image : "images/forms/upload_file.gif",
			imageheight : 29,
			imagewidth : 78,
			width : 300
		});
	});
</script>

<!-- Custom jquery scripts -->
<script src="js/jquery/custom_jquery.js" type="text/javascript"></script>

<!-- Tooltips -->
<script src="js/jquery/jquery.tooltip.js" type="text/javascript"></script>
<script src="js/jquery/jquery.dimensions.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function() {
		$('a.info-tooltip ').tooltip({
			track : true,
			delay : 0,
			fixPNG : true,
			showURL : false,
			showBody : " - ",
			top : -35,
			left : 5
		});
	});
</script>

<!--  date picker script -->
<link rel="stylesheet" href="css/datePicker.css" type="text/css" />
<script src="js/jquery/date.js" type="text/javascript"></script>
<script src="js/jquery/jquery.datePicker.js" type="text/javascript"></script>
<script type="text/javascript" charset="utf-8">
	$(function() {

		// initialise the "Select date" link
		$('#date-pick').datePicker(
		// associate the link with a date picker
		{
			createButton : false,
			startDate : '01/01/2005',
			endDate : '31/12/2020'
		}).bind(
		// when the link is clicked display the date picker
		'click', function() {
			updateSelects($(this).dpGetSelected()[0]);
			$(this).dpDisplay();
			return false;
		}).bind(
		// when a date is selected update the SELECTs
		'dateSelected', function(e, selectedDate, $td, state) {
			updateSelects(selectedDate);
		}).bind('dpClosed', function(e, selected) {
			updateSelects(selected[0]);
		});

		var updateSelects = function(selectedDate) {
			var selectedDate = new Date(selectedDate);
			$('#d option[value=' + selectedDate.getDate() + ']').attr(
					'selected', 'selected');
			$('#m option[value=' + (selectedDate.getMonth() + 1) + ']').attr(
					'selected', 'selected');
			$('#y option[value=' + (selectedDate.getFullYear()) + ']').attr(
					'selected', 'selected');
		}
		// listen for when the selects are changed and update the picker
		$('#d, #m, #y').bind('change', function() {
			var d = new Date($('#y').val(), $('#m').val() - 1, $('#d').val());
			$('#date-pick').dpSetSelected(d.asString());
		});

		// default the position of the selects to today
		var today = new Date();
		updateSelects(today.getTime());

		// and update the datePicker to reflect it...
		$('#d').trigger('change');
	});
</script>

<!-- MUST BE THE LAST SCRIPT IN <HEAD></HEAD></HEAD> png fix -->
<script src="js/jquery/jquery.pngFix.pack.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(document).pngFix();
	});
</script>
</head>
<body>
	<!-- Start: page-top-outer -->
	<div id="page-top-outer">

		<!-- Start: page-top -->
		<div id="page-top">

			<!-- start logo -->
			<div id="logo">
<!-- 				<a href=""><img src="images/shared/logo.png" width="156"
					height="40" alt="" /> </a> -->
			</div>
			<!-- end logo -->

			<!--  start top-search -->
			<div id="top-search">
				<table border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td><input type="text" value="Search"
							onblur="if (this.value=='') { this.value='Search'; }"
							onfocus="if (this.value=='Search') { this.value=''; }"
							class="top-search-inp" />
						</td>
						<td><select class="styledselect">
								<option value="">All</option>
								<!-- <option value="">Products</option>
								<option value="">Categories</option>
								<option value="">Clients</option>
								<option value="">News</option> -->
						</select></td>
						<td><input type="image"
							src="images/shared/top_search_btn.gif" /></td>
					</tr>
				</table>
			</div>
			<!--  end top-search -->
			<div class="clear"></div>

		</div>
		<!-- End: page-top -->

	</div>
	<!-- End: page-top-outer -->

	<div class="clear">&nbsp;</div>

	<!--  start nav-outer-repeat................................................................................................. START -->
	<div class="nav-outer-repeat">
		<!--  start nav-outer -->
		<div class="nav-outer">

			<!-- start nav-right -->
			<div id="nav-right">

				<div class="nav-divider">&nbsp;</div>
				<div class="showhide-account">
					<img src="images/shared/nav/nav_myaccount.gif" width="93"
						height="14" alt="" />
				</div>
				<div class="nav-divider">&nbsp;</div>
				<a href="" id="logout"><img
					src="images/shared/nav/nav_logout.gif" width="64" height="14"
					alt="" /> </a>
				<div class="clear">&nbsp;</div>

				<!--  start account-content -->
				<div class="account-content">
					<div class="account-drop-inner">
						<a href="" id="acc-settings">Settings</a>
						<div class="clear">&nbsp;</div>
						<div class="acc-line">&nbsp;</div>
						<a href="" id="acc-details">Personal details </a>
						<div class="clear">&nbsp;</div>
						<div class="acc-line">&nbsp;</div>
						<a href="" id="acc-project">Project details</a>
						<div class="clear">&nbsp;</div>
						<div class="acc-line">&nbsp;</div>
						<a href="" id="acc-inbox">Inbox</a>
						<div class="clear">&nbsp;</div>
						<div class="acc-line">&nbsp;</div>
						<a href="" id="acc-stats">Statistics</a>
					</div>
				</div>
				<!--  end account-content -->

			</div>
			<!-- end nav-right -->


			<!--  start nav -->
			<div class="nav">
				<div class="table">

				<!-- 	<ul class="select">
						<li><a href="#nogo"><b>Dashboard</b> [if IE 7]><!
						</a> <![endif] [if lte IE 6]><table><tr><td><![endif]
							<div class="select_sub">
								<ul class="sub">
									<li><a href="#nogo">Dashboard Details 1</a>
									</li>
									<li><a href="#nogo">Dashboard Details 2</a>
									</li>
									<li><a href="#nogo">Dashboard Details 3</a>
									</li>
								</ul>
							</div> [if lte IE 6]></td></tr></table></a><![endif]</li>
					</ul> -->

					<div class="nav-divider">&nbsp;</div>

					<ul class="current">
						<li><a href="#nogo"><b>Test Plan</b> <!--[if IE 7]><!--> </a>
							<!--<![endif]--> <!--[if lte IE 6]><table><tr><td><![endif]-->
							<div class="select_sub show">
								<ul class="sub">
									<li><a href="#nogo">View all Test Cases</a>
									</li>
									<li class="sub_show"><a href="#nogo"> Add Test Case </a>
									</li>
									<li><a href="#nogo">Delete Test Case</a>
									</li>
								</ul>
							</div> <!--[if lte IE 6]></td></tr></table></a><![endif]--></li>
					</ul>

				 	<div class="nav-divider">&nbsp;</div>

					<!-- <ul class="select">
						<li><a href="#nogo"><b>Categories</b> [if IE 7]><!
						</a> <![endif] [if lte IE 6]><table><tr><td><![endif]
							<div class="select_sub">
								<ul class="sub">
									<li><a href="#nogo">Categories Details 1</a>
									</li>
									<li><a href="#nogo">Categories Details 2</a>
									</li>
									<li><a href="#nogo">Categories Details 3</a>
									</li>
								</ul>
							</div> [if lte IE 6]></td></tr></table></a><![endif]</li>
					</ul> --> 
<!-- 
					<div class="nav-divider">&nbsp;</div>

					<ul class="select">
						<li><a href="#nogo"><b>Clients</b> [if IE 7]><! </a> <![endif]
							[if lte IE 6]><table><tr><td><![endif]
							<div class="select_sub">
								<ul class="sub">
									<li><a href="#nogo">Clients Details 1</a>
									</li>
									<li><a href="#nogo">Clients Details 2</a>
									</li>
									<li><a href="#nogo">Clients Details 3</a>
									</li>

								</ul>
							</div> [if lte IE 6]></td></tr></table></a><![endif]</li>
					</ul> -->
<!-- 
					<div class="nav-divider">&nbsp;</div>

					<ul class="select">
						<li><a href="#nogo"><b>News</b> [if IE 7]><! </a> <![endif]
							[if lte IE 6]><table><tr><td><![endif]
							<div class="select_sub">
								<ul class="sub">
									<li><a href="#nogo">News details 1</a>
									</li>
									<li><a href="#nogo">News details 2</a>
									</li>
									<li><a href="#nogo">News details 3</a>
									</li>
								</ul>
							</div> [if lte IE 6]></td></tr></table></a><![endif]</li>
					</ul>

					<div class="clear"></div>-->
				</div> 
				<div class="clear"></div>
			</div>
			<!--  start nav -->

		</div>
		<div class="clear"></div>
		<!--  start nav-outer -->
	</div>
	<!--  start nav-outer-repeat................................................... END -->

	<div class="clear"></div>

	<!-- start content-outer -->
	<div id="content-outer">
		<!-- start content -->
		<div id="content">


			<div id="page-heading">
				<h1>
					<!-- Display Success Message Here -->
					<bean:write name="helloWorldForm" property="message" />
				</h1>
			</div>


			<table border="0" width="100%" cellpadding="0" cellspacing="0"
				id="content-table">
				<tr>
					<th rowspan="3" class="sized"><img
						src="images/shared/side_shadowleft.jpg" width="20" height="300"
						alt="" />
					</th>
					<th class="topleft"></th>
					<td id="tbl-border-top">&nbsp;</td>
					<th class="topright"></th>
					<th rowspan="3" class="sized"><img
						src="images/shared/side_shadowright.jpg" width="20" height="300"
						alt="" />
					</th>
				</tr>
				<tr>
					<td id="tbl-border-left"></td>
					<td>
						<!--  start content-table-inner -->
						<div id="content-table-inner">

							<table border="0" width="100%" cellpadding="0" cellspacing="0">
								<tr valign="top">
									<td>
										<!--  start step-holder -->
										<div id="step-holder">
											<div class="step-no">1</div>
											<div class="step-dark-left">
												<a href="">Add Test Case</a>
											</div>
<!-- 											<div class="step-dark-right">&nbsp;</div> -->
											<!-- <div class="step-no-off">2</div>
											<div class="step-light-left">Select related products</div>
											<div class="step-light-right">&nbsp;</div>
											<div class="step-no-off">3</div>
											<div class="step-light-left">Preview</div> -->
<!-- 											<div class="step-light-round">&nbsp;</div> -->
											<div class="clear"></div>
										</div> <!--  end step-holder --> <!-- start id-form -->
										<table border="0" cellpadding="0" cellspacing="0" id="id-form">
											<tr>
												<th valign="top">Test name:</th>
												<td><input type="text" class="inp-form" />
												</td>
												<td></td>
											</tr>
											<tr>
												<th valign="top">Test Type:</th>
												<td><select class="styledselect_form_1">
														<option value="">Customer</option>
														<option value="">Order</option>
														<option value="">Coupon</option>
												</select></td>
												<td></td>
											</tr>
											<tr>
												<th>File Path:</th>
												<td><input type="file" class="file_1" />
												</td>
												<td>
													<div class="bubble-left"></div> <!-- 													<div class="bubble-inner">JPEG, GIF 5MB max per image</div> -->
													<div class="bubble-right"></div></td>
											</tr>
											<tr>
												<th>&nbsp;</th>
												<td valign="top"><input type="button" value=""
													class="form-submit" /> <input type="reset" value=""
													class="form-reset" /></td>
												<td></td>
											</tr>
										</table> <!-- end id-form  --></td>
									<td>
										<!--  start related-activities -->
										<div id="related-activities">

										<!-- 	
											<div id="related-act-top">
												<img src="images/forms/header_related_act.gif" width="271"
													height="43" alt="" />
											</div>
											end related-act-top

											 start related-act-bottom
											<div id="related-act-bottom">

												 start related-act-inner
												<div id="related-act-inner">

													<div class="left">
														<a href=""><img src="images/forms/icon_plus.gif"
															width="21" height="21" alt="" /> </a>
													</div>
													<div class="right">
														<h5>Add another product</h5>
														Lorem ipsum dolor sit amet consectetur adipisicing elitsed
														do eiusmod tempor.
														<ul class="greyarrow">
															<li><a href="">Click here to visit</a>
															</li>
															<li><a href="">Click here to visit</a></li>
														</ul>
													</div>

													<div class="clear"></div>
													<div class="lines-dotted-short"></div>

													<div class="left">
														<a href=""><img src="images/forms/icon_minus.gif"
															width="21" height="21" alt="" /> </a>
													</div>
													<div class="right">
														<h5>Delete products</h5>
														Lorem ipsum dolor sit amet consectetur adipisicing elitsed
														do eiusmod tempor.
														<ul class="greyarrow">
															<li><a href="">Click here to visit</a>
															</li>
															<li><a href="">Click here to visit</a></li>
														</ul>
													</div>

													<div class="clear"></div>
													<div class="lines-dotted-short"></div>

													<div class="left">
														<a href=""><img src="images/forms/icon_edit.gif"
															width="21" height="21" alt="" /> </a>
													</div>
													<div class="right">
														<h5>Edit categories</h5>
														Lorem ipsum dolor sit amet consectetur adipisicing elitsed
														do eiusmod tempor.
														<ul class="greyarrow">
															<li><a href="">Click here to visit</a>
															</li>
															<li><a href="">Click here to visit</a></li>
														</ul>
													</div>
													<div class="clear"></div>

												</div>
												end related-act-inner
												<div class="clear"></div>

											</div>
											end related-act-bottom -->

										</div> <!-- end related-activities --></td>
								</tr>
								<tr>
									<td><img src="images/shared/blank.gif" width="695"
										height="1" alt="blank" />
									</td>
									<td></td>
								</tr>
							</table>

							<div class="clear"></div>


						</div> <!--  end content-table-inner  --></td>
					<td id="tbl-border-right"></td>
				</tr>
				<tr>
					<th class="sized bottomleft"></th>
					<td id="tbl-border-bottom">&nbsp;</td>
					<th class="sized bottomright"></th>
				</tr>
			</table>





			<div class="clear">&nbsp;</div>

		</div>
		<!--  end content -->
		<div class="clear">&nbsp;</div>
	</div>
	<!--  end content-outer -->



	<div class="clear">&nbsp;</div>

	<!-- start footer -->
	<div id="footer">
		<!--  start footer-left -->
		<div id="footer-left">
			WebServiceTest &copy; Copyright <a href=""></a>.All rights reserved.
		</div>
		<!--  end footer-left -->
		<div class="clear">&nbsp;</div>
	</div>
	<!-- end footer -->

</body>
</html>