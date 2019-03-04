<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="http://libs.baidu.com/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<script src="script/global.js" type="text/javascript"></script>
<script src="script/head.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="css/main.css"/>
<link rel="stylesheet" type="text/css" href="css/basic.css">
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" href="style/base.css" />
<link rel="stylesheet" href="style/head.css" />

<link href="css/amazeui.css" rel="stylesheet" type="text/css">
<link href="css/personal.css" rel="stylesheet" type="text/css">
<link href="css/orstyle.css" rel="stylesheet" type="text/css">
<script src="js/amazeui.js"></script>
<script type="text/javascript">
$(function() {
	$(".ok").click(function() {
		alert("已收货");
	});
});
</script>
<style type="text/css">
	table tr td{
		text-align: center;
		border: 1px black solid;
	}
	
</style>
</head>
<body>
<%@ include file="include/head.jsp" %>
	
	<div class="user-order" style="padding-right: 420px;padding-left: 420px;">

						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">订单管理</strong> / <small>Order</small></div>
						</div>
						<hr>

						<div class="am-tabs am-tabs-d2 am-margin" data-am-tabs="">


							<div class="am-tabs-bd" style="touch-action: pan-y; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
								<div class="am-tab-panel am-fade am-in am-active" id="tab1">
									<div class="order-top">
										<div class="th th-item">
											商品
										</div>
										<div class="th th-price">
											单价
										</div>
										<div class="th th-number">
											数量
										</div>
										<div class="th th-operation" >
											&nbsp;
										</div>
										<div class="th th-amount">
											合计
										</div>
										<div class="th th-status" >
											交易状态
										</div>
										<div class="th th-change">
											交易操作
										</div>
									</div>

									<div class="order-main">
										<div class="order-list">
											
											<!--交易成功-->
											<div class="order-status5">
												<div class="order-title">
													 <c:forEach items="${ordersList }" var="ol">
														<div class="dd-num">订单编号：<a href="javascript:;">${ol.orderId }</a></div>
													
													<span>成交时间：${ol.createDate }</span>
												</div>
												<div class="order-content">
													<div class="order-left">
													<c:forEach items="${ol.orderitemses }" var="ol_oi">
														<ul class="item-list">
															<li class="td td-item">
																<div class="item-pic">
																	<a href="#" class="J_MakePoint">
																		<c:forEach items="${ol_oi.commditys.imageses}" var="iimg">
																			<c:if test="${iimg.imageType==0 }">
																				<img src="${iimg.imageUrl}" class="itempic J_ItemImg">
																			</c:if>
																			
																		</c:forEach>
																	</a>
																</div>
																<div class="item-info">
																	<div class="item-basic-info">
																		<a href="#">
																			<p>${ol_oi.commditys.commdityTitle}</p>
																		</a>
																	</div>
																</div>
															</li>
															<li class="td td-price">
																<div class="item-price">
																	${ol_oi.commditys.commdityPrice }
																</div>
															</li>
															<li class="td td-number">
																<div class="item-number">
																	<span>×</span>${ol_oi.number }
																</div>
															</li>
														</ul>
												 	</c:forEach> 
													</div>
													<div class="order-right">
														<li class="td td-amount">
															<div class="item-amount">
																合计：${ol.countPrice }
																<p>含运费：<span>0.00</span></p>
															</div>
														</li>
														<c:choose>
															<c:when test="${ol.status==0}">
															<div class="move-right">
															<li class="td td-status">
																<div class="item-status">
																	<p class="Mystatus" style="padding-top: 15px">未付款</p>
																</div>
															</li>
															<li class="td td-change">
																<div class="am-btn am-btn-danger anniu">
																	<a href="findcountPriceById?orders.orderId=${ol.orderId }" style="color: white;">去付款</a>
																	</div>
															</li>
														</div>
													</div>
															</c:when>
															<c:when test="${ol.status==1}">
															<div class="move-right">
															<li class="td td-status">
																<div class="item-status">
																	<p class="Mystatus" style="padding-top: 15px">已付款，已发货</p>
																</div>
															</li>
															<li class="td td-change">
																<div class="am-btn am-btn-danger anniu">
																	<a class="ok" href="updateOrdersStatus?orders.orderId=${ol.orderId }" style="color: white;">确认收货</a></div>
															</li>
														</div>
													</div>
															</c:when>
															<c:when test="${ol.status==2}">
															<div class="move-right">
															<li class="td td-status">
																<div class="item-status">
																	<p class="Mystatus" style="padding-top: 15px">已收货</p>
																</div>
															</li>
															<li class="td td-change">
																<div class="am-btn am-btn-danger anniu">
																	<a href="#" style="color: white;">待评价</a></div>
															</li>
														</div>
													</div>
															</c:when>
														</c:choose>
														
													</c:forEach> 
												</div>
											</div>
											
						</div>
					</div>
					</div>
	<%@include file="include/end.jsp" %>
</body>
</html>