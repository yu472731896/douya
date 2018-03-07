<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
	<head>
		<meta charset="utf-8" />
		<title>首页</title>
		<meta name="renderer" content="webkit" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<!--微信不缓存东西  start-->
		<meta http-equiv="Pragma" content="no-cache" />
		<meta http-equiv="Expires" content="0" />
		<!--微信不缓存东西  end-->

		<link rel="stylesheet" type="text/css" href="${ctxStatic}/novel/css/reset.css" />
		<link rel="stylesheet" type="text/css" href="${ctxStatic}/novel/css/all.css">
		<link rel="stylesheet" type="text/css" href="${ctxStatic}/novel/css/swiper3.07.min.css" />
		<link rel="shortcut icon" href="${ctxStatic}/novel/img/favicon.ico" type="image/x-icon">
		<script type="text/javascript" src="${ctxStatic}/novel/js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="${ctxStatic}/novel/js/swiper.min.js"></script>
	</head>

	<body>
		<nav class="nav">
			<img class="nav_logo" src="${ctxStatic}/novel/img/logo.jpg" />
			<a class="nav_link" href="javascript:void(0)">首页</a>
			<a class="nav_link" href="javascript:void(0)">书库</a>
			<a class="nav_link" href="javascript:void(0)">排行</a>
			<a class="nav_link link_right" class="right" href="javascript:void(0)">登录</a>
			<a class="nav_link link_right" class="right" href="javascript:void(0)">作者中心</a>
		</nav>
		<div class="page_content">
			<div class="content_left">
				<!--主推小说banner-->
				<div class="swiper-container left" id="slide">
					<div class="swiper-wrapper">
						<a class="swiper-slide" href="#" title="大裂">
							<img src="//cms-bucket.nosdn.127.net/0f052ad6e9aa4a46aad9d11d2176cc5720180228161607.jpeg" />
						</a>
						<a class="swiper-slide" href="#" title="艾约堡秘史">
							<img src="//cms-bucket.nosdn.127.net/a74aca32644749dbb0d3b238bf4e8bd320180218204748.jpeg" />
						</a>
						<a class="swiper-slide" href="#" title="北洋夜行记">
							<img src="//cms-bucket.nosdn.127.net/9e2245dc98424321914b6b4e1cb5f33c20180224093631.jpeg" />
						</a>
					</div>
					<div class="pagination" style="background:transparent;text-align:center;"></div>
				</div>
				<!--编辑推荐-->
				<div class="recommend_box">
					<p class="title_border">编辑推荐</p>
					<ul>
						<li class="recommend_box_list">
							<img class="recommend_box_bookcover" src="https://easyreadfs.nosdn.127.net/aSyqJhp7JeANBh9sO_gmLg==/6597140135402220472" alt="" />
							<div class="recommend_box_book_info">
								<p class="recommend_box_book_name">我承认我不曾历经沧桑</p>
								<p class="recommend_book_abstract">
									2008年秋天，作者进入清华大学就读，2012年毕业，受聘为《新周刊》杂志副主编。回首过往五年，课业之外，作者亦经常参与公共话题的讨论及多种社会活动，生活不可谓不丰富不精彩。</p>
								<p class="recommend_book_author">作者：蒋方舟</p>
							</div>
						</li>
						<li class="recommend_box_list">
							<img class="recommend_box_bookcover" src="https://easyreadfs.nosdn.127.net/aSyqJhp7JeANBh9sO_gmLg==/6597140135402220472" alt="" />
							<div class="recommend_box_book_info">
								<p class="recommend_box_book_name">我承认我不曾历经沧桑</p>
								<p class="recommend_book_abstract">
									2008年秋天，作者进入清华大学就读，2012年毕业，受聘为《新周刊》杂志副主编。回首过往五年，课业之外，作者亦经常参与公共话题的讨论及多种社会活动，生活不可谓不丰富不精彩。</p>
								<p class="recommend_book_author">作者：蒋方舟</p>
							</div>
						</li>
						<li class="recommend_box_list">
							<img class="recommend_box_bookcover" src="https://easyreadfs.nosdn.127.net/aSyqJhp7JeANBh9sO_gmLg==/6597140135402220472" alt="" />
							<div class="recommend_box_book_info">
								<p class="recommend_box_book_name">我承认我不曾历经沧桑</p>
								<p class="recommend_book_abstract">
									2008年秋天，作者进入清华大学就读，2012年毕业，受聘为《新周刊》杂志副主编。回首过往五年，课业之外，作者亦经常参与公共话题的讨论及多种社会活动，生活不可谓不丰富不精彩。</p>
								<p class="recommend_book_author">作者：蒋方舟</p>
							</div>
						</li>
						<li class="recommend_box_list">
							<img class="recommend_box_bookcover" src="https://easyreadfs.nosdn.127.net/aSyqJhp7JeANBh9sO_gmLg==/6597140135402220472" alt="" />
							<div class="recommend_box_book_info">
								<p class="recommend_box_book_name">我承认我不曾历经沧桑</p>
								<p class="recommend_book_abstract">
									2008年秋天，作者进入清华大学就读，2012年毕业，受聘为《新周刊》杂志副主编。回首过往五年，课业之外，作者亦经常参与公共话题的讨论及多种社会活动，生活不可谓不丰富不精彩。</p>
								<p class="recommend_book_author">作者：蒋方舟</p>
							</div>
						</li>
						<li class="recommend_box_list">
							<img class="recommend_box_bookcover" src="https://easyreadfs.nosdn.127.net/aSyqJhp7JeANBh9sO_gmLg==/6597140135402220472" alt="" />
							<div class="recommend_box_book_info">
								<p class="recommend_box_book_name">我承认我不曾历经沧桑</p>
								<p class="recommend_book_abstract">
									2008年秋天，作者进入清华大学就读，2012年毕业，受聘为《新周刊》杂志副主编。回首过往五年，课业之外，作者亦经常参与公共话题的讨论及多种社会活动，生活不可谓不丰富不精彩。</p>
								<p class="recommend_book_author">作者：蒋方舟</p>
							</div>
						</li>
						<li class="recommend_box_list">
							<img class="recommend_box_bookcover" src="https://easyreadfs.nosdn.127.net/aSyqJhp7JeANBh9sO_gmLg==/6597140135402220472" alt="" />
							<div class="recommend_box_book_info">
								<p class="recommend_box_book_name">我承认我不曾历经沧桑</p>
								<p class="recommend_book_abstract">
									2008年秋天，作者进入清华大学就读，2012年毕业，受聘为《新周刊》杂志副主编。回首过往五年，课业之外，作者亦经常参与公共话题的讨论及多种社会活动，生活不可谓不丰富不精彩。</p>
								<p class="recommend_book_author">作者：蒋方舟</p>
							</div>
						</li>
					</ul>
				</div>
				<!--精品图书-->
				<div class="recommend_box competitive_box">
					<p class="title_border">精品图书</p>
					<ul>
						<li class="competitive_box_list">
							<img class="competitive_box_list_bookcover" src="https://easyreadfs.nosdn.127.net/aSyqJhp7JeANBh9sO_gmLg==/6597140135402220472" alt="" />
							<p class="competitive_box_list_book_name">我承认我不曾历经沧桑</p>
							<div class="competitive_author"><img src="img/logo.jpg"/><span>蒋方舟</span></div>
						</li>
					</ul>
				</div>
				<!--最近更新-->
				<div class="recommend_box competitive_box" style="clear: both;">
					<p class="title_border">最近更新</p>
					<table border="" cellspacing="" cellpadding="">
						<tr>
							<th style="width: 32%;">小说名称</th>
							<th style="width: 33%;">更新章节</th>
							<th style="width: 15%;">作者</th>
							<th style="width: 20%;">更新时间</th>
						</tr>
						<tr>
							<td>我承认我不曾历经沧桑</td>
							<td>第十章 中国作家梦魇</td>
							<td>蒋方舟</td>
							<td>2017-02-01&nbsp;&nbsp;16:26</td>
						</tr>
					</table>
				</div>
			</div>
			<div class="content_right">
				<!--免费榜单-->
				<div class="rank_list">
					<p class="rank_title">免费榜单
						<a class="right" href="">更多&gt;</a>
					</p>
					<ul>
						<li class="rank_book_info rank_hover">
							<span class="rank_num">01</span>
							<img class="rank_bookcover" src="https://easyreadfs.nosdn.127.net/aSyqJhp7JeANBh9sO_gmLg==/6597140135402220472" alt="" />
							<div class="rank_book_name">
								<p>我承认我不曾历经沧桑</p>
								<p class="book_abstract">蒋方舟--我承认我不曾历经沧桑</p>
							</div>
						</li>
						<li class="rank_book_info">
							<span class="rank_num">02</span>
							<img class="rank_bookcover" src="https://easyreadfs.nosdn.127.net/aSyqJhp7JeANBh9sO_gmLg==/6597140135402220472" alt="" />
							<div class="rank_book_name">
								<p>我承认我不曾历经沧桑</p>
								<p class="book_abstract">蒋方舟--我承认我不曾历经沧桑</p>
							</div>
						</li>
						<li class="rank_book_info">
							<span class="rank_num">03</span>
							<img class="rank_bookcover" src="https://easyreadfs.nosdn.127.net/aSyqJhp7JeANBh9sO_gmLg==/6597140135402220472" alt="" />
							<div class="rank_book_name">
								<p>我承认我不曾历经沧桑</p>
								<p class="book_abstract">蒋方舟--我承认我不曾历经沧桑</p>
							</div>
						</li>
						<li class="rank_book_info">
							<span class="rank_num">04</span>
							<img class="rank_bookcover" src="https://easyreadfs.nosdn.127.net/aSyqJhp7JeANBh9sO_gmLg==/6597140135402220472" alt="" />
							<div class="rank_book_name">
								<p>我承认我不曾历经沧桑</p>
								<p class="book_abstract">蒋方舟--我承认我不曾历经沧桑</p>
							</div>
						</li>
						<li class="rank_book_info">
							<span class="rank_num">05</span>
							<img class="rank_bookcover" src="https://easyreadfs.nosdn.127.net/aSyqJhp7JeANBh9sO_gmLg==/6597140135402220472" alt="" />
							<div class="rank_book_name">
								<p>我承认我不曾历经沧桑</p>
								<p class="book_abstract">蒋方舟--我承认我不曾历经沧桑</p>
							</div>
						</li>
						<li class="rank_book_info">
							<span class="rank_num">06</span>
							<img class="rank_bookcover" src="https://easyreadfs.nosdn.127.net/aSyqJhp7JeANBh9sO_gmLg==/6597140135402220472" alt="" />
							<div class="rank_book_name">
								<p>我承认我不曾历经沧桑</p>
								<p class="book_abstract">蒋方舟--我承认我不曾历经沧桑</p>
							</div>
						</li>
						<li class="rank_book_info">
							<span class="rank_num">07</span>
							<img class="rank_bookcover" src="https://easyreadfs.nosdn.127.net/aSyqJhp7JeANBh9sO_gmLg==/6597140135402220472" alt="" />
							<div class="rank_book_name">
								<p>我承认我不曾历经沧桑</p>
								<p class="book_abstract">蒋方舟--我承认我不曾历经沧桑</p>
							</div>
						</li>
						<li class="rank_book_info">
							<span class="rank_num">08</span>
							<img class="rank_bookcover" src="https://easyreadfs.nosdn.127.net/aSyqJhp7JeANBh9sO_gmLg==/6597140135402220472" alt="" />
							<div class="rank_book_name">
								<p>我承认我不曾历经沧桑</p>
								<p class="book_abstract">蒋方舟--我承认我不曾历经沧桑</p>
							</div>
						</li>
						<li class="rank_book_info">
							<span class="rank_num">09</span>
							<img class="rank_bookcover" src="https://easyreadfs.nosdn.127.net/aSyqJhp7JeANBh9sO_gmLg==/6597140135402220472" alt="" />
							<div class="rank_book_name">
								<p>我承认我不曾历经沧桑</p>
								<p class="book_abstract">蒋方舟--我承认我不曾历经沧桑</p>
							</div>
						</li>
						<li class="rank_book_info">
							<span class="rank_num">10</span>
							<img class="rank_bookcover" src="https://easyreadfs.nosdn.127.net/aSyqJhp7JeANBh9sO_gmLg==/6597140135402220472" alt="" />
							<div class="rank_book_name">
								<p>我承认我不曾历经沧桑</p>
								<p class="book_abstract">蒋方舟--我承认我不曾历经沧桑</p>
							</div>
						</li>
					</ul>
				</div>

				<!--追书榜-->
				<div class="rank_list">
					<p class="rank_title">追书榜
						<a class="right" href="">更多&gt;</a>
					</p>
					<ul>
						<li class="rank_book_info rank_hover">
							<span class="rank_num">01</span>
							<img class="rank_bookcover" src="https://easyreadfs.nosdn.127.net/aSyqJhp7JeANBh9sO_gmLg==/6597140135402220472" alt="" />
							<div class="rank_book_name">
								<p>我承认我不曾历经沧桑</p>
								<p class="book_abstract">蒋方舟--我承认我不曾历经沧桑</p>
							</div>
						</li>
						<li class="rank_book_info">
							<span class="rank_num">02</span>
							<img class="rank_bookcover" src="https://easyreadfs.nosdn.127.net/aSyqJhp7JeANBh9sO_gmLg==/6597140135402220472" alt="" />
							<div class="rank_book_name">
								<p>我承认我不曾历经沧桑</p>
								<p class="book_abstract">蒋方舟--我承认我不曾历经沧桑</p>
							</div>
						</li>
						<li class="rank_book_info">
							<span class="rank_num">03</span>
							<img class="rank_bookcover" src="https://easyreadfs.nosdn.127.net/aSyqJhp7JeANBh9sO_gmLg==/6597140135402220472" alt="" />
							<div class="rank_book_name">
								<p>我承认我不曾历经沧桑</p>
								<p class="book_abstract">蒋方舟--我承认我不曾历经沧桑</p>
							</div>
						</li>
						<li class="rank_book_info">
							<span class="rank_num">04</span>
							<img class="rank_bookcover" src="https://easyreadfs.nosdn.127.net/aSyqJhp7JeANBh9sO_gmLg==/6597140135402220472" alt="" />
							<div class="rank_book_name">
								<p>我承认我不曾历经沧桑</p>
								<p class="book_abstract">蒋方舟--我承认我不曾历经沧桑</p>
							</div>
						</li>
						<li class="rank_book_info">
							<span class="rank_num">05</span>
							<img class="rank_bookcover" src="https://easyreadfs.nosdn.127.net/aSyqJhp7JeANBh9sO_gmLg==/6597140135402220472" alt="" />
							<div class="rank_book_name">
								<p>我承认我不曾历经沧桑</p>
								<p class="book_abstract">蒋方舟--我承认我不曾历经沧桑</p>
							</div>
						</li>
						<li class="rank_book_info">
							<span class="rank_num">06</span>
							<img class="rank_bookcover" src="https://easyreadfs.nosdn.127.net/aSyqJhp7JeANBh9sO_gmLg==/6597140135402220472" alt="" />
							<div class="rank_book_name">
								<p>我承认我不曾历经沧桑</p>
								<p class="book_abstract">蒋方舟--我承认我不曾历经沧桑</p>
							</div>
						</li>
						<li class="rank_book_info">
							<span class="rank_num">07</span>
							<img class="rank_bookcover" src="https://easyreadfs.nosdn.127.net/aSyqJhp7JeANBh9sO_gmLg==/6597140135402220472" alt="" />
							<div class="rank_book_name">
								<p>我承认我不曾历经沧桑</p>
								<p class="book_abstract">蒋方舟--我承认我不曾历经沧桑</p>
							</div>
						</li>
						<li class="rank_book_info">
							<span class="rank_num">08</span>
							<img class="rank_bookcover" src="https://easyreadfs.nosdn.127.net/aSyqJhp7JeANBh9sO_gmLg==/6597140135402220472" alt="" />
							<div class="rank_book_name">
								<p>我承认我不曾历经沧桑</p>
								<p class="book_abstract">蒋方舟--我承认我不曾历经沧桑</p>
							</div>
						</li>
						<li class="rank_book_info">
							<span class="rank_num">09</span>
							<img class="rank_bookcover" src="https://easyreadfs.nosdn.127.net/aSyqJhp7JeANBh9sO_gmLg==/6597140135402220472" alt="" />
							<div class="rank_book_name">
								<p>我承认我不曾历经沧桑</p>
								<p class="book_abstract">蒋方舟--我承认我不曾历经沧桑</p>
							</div>
						</li>
						<li class="rank_book_info">
							<span class="rank_num">10</span>
							<img class="rank_bookcover" src="https://easyreadfs.nosdn.127.net/aSyqJhp7JeANBh9sO_gmLg==/6597140135402220472" alt="" />
							<div class="rank_book_name">
								<p>我承认我不曾历经沧桑</p>
								<p class="book_abstract">蒋方舟--我承认我不曾历经沧桑</p>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="index_footer_copyright">豆芽读书版权所有&nbsp;&copy;2018</div>
		<script type="text/javascript">
			$(document).ready(function() {
				//轮播
				var mySwiper = new Swiper('#slide', {
					autoplay: 3500,
					autoplayDisableOnInteraction: false,
					visibilityFullFit: true,
					loop: true,
					pagination: '.pagination',
				});
			});
			$(".rank_book_info").mouseover(function() {
				$(".rank_book_info").removeClass("rank_hover");
				$(this).addClass("rank_hover");
			});
		</script>

	</body>

</html>