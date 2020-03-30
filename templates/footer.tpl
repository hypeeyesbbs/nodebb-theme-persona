		</div><!-- /.container#content -->
	</main>

		<footer class="footer">
			<div class="footer-firstline">
				<div class="footer-left text-left" style="color: rgb(102, 102, 102); display: flex">
					<img class="footer-logo" src="/assets/uploads/system/bbs-logo.png" alt="Logo">
					<div class="footer-info-list">
						<li>
							<a href="/custom" style="font-weight: bolder; font-size: 18px">关于我们</a>
						</li>
						<li>
							<a href="/custom">关于潮目</a>
						</li>
						<li>
							<a href="/custom">联系我们</a>
						</li>
						<li>
							<a href="/custom">加入我们</a>
						</li>
					</div>
					<div class="footer-ugc-list">
						<li>
							<a href="/aboutus" target="_blank" style="font-weight: bolder; font-size: 18px">关注我们</a>
						</li>
						<div class="share-icons">
							<a rel="nofollow" href="https://mp.weixin.qq.com/s/FYOiA6S19dgA-DlQCa9AkQ" target="_blank" style="display:inline-block;margin-right:8px;">
							<span class="weixin-icon">
								<img style="width: 25px;height: 25px;" src="https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/371_Wechat_logo-512.png">
							</span>
							</a>
							<!--						<a rel="nofollow" href="https://www.weibo.com/u/6813829027?is_all=1" target="_blank" style="display:inline-block;margin-right:8px;">-->
							<!--								<span class="nowre-third-icon small">-->
							<!--									<img style="width: 25px;height: 25px;" src="https://cdn4.iconfinder.com/data/icons/chinas-social-share-icons/256/cssi_sina_weibo-512.png">-->
							<!--								</span>-->

							<!--						</a>-->
							<a rel="nofollow" href="https://www.instagram.com/hypeeyes_official/" target="_blank" style="display:inline-block;margin-right:8px;">
							  <span class="nowre-third-icon small">
								<img style="width: 25px;height: 25px;" src="http://www.transparentpng.com/thumb/instagram-logo-icon/85T6Z9-instagram-logo-clipart-transparent.png">
							  </span>
							</a>
						</div>

					</div>
				</div>
				<div class="footer-space"></div>
				<div class="footer-orange-shadow">
					<div class="footer-right-text">
						<div class="text-info">更多潮流资讯</div>
						<div class="text-info">关注我们</div>
						<div class="text-info">微信公众号</div>
					</div>
				</div>
				<div class="footer-right" style="color: rgb(102, 102, 102);">
					<div class="img-wrap" style="text-align: center;">
						<img style="width: 150px; height: 150px" src="/assets/uploads/system/qrcode_for_gh.jpg" alt="扫码">
					</div>
				</div>
			</div>
			<hr class="line-copy-8">
			<div class="footer-button text-center" style="color: rgb(102, 102, 102); padding: 20px">
				© 2020 北京潮物纪网络科技有限公司
				<span class="se" style="color: #ccc; padding: 0 6px;">|</span>
				<a class="" href="http://www.beian.miit.gov.cn/" target="_blank">
					京ICP备18059580号
				</a>
			</div>
		</footer>

	<!-- IF !isSpider -->
	<div class="topic-search hidden">
		<div class="btn-group">
			<button type="button" class="btn btn-default count"></button>
			<button type="button" class="btn btn-default prev"><i class="fa fa-fw fa-angle-up"></i></button>
			<button type="button" class="btn btn-default next"><i class="fa fa-fw fa-angle-down"></i></button>
		</div>
	</div>

	<div component="toaster/tray" class="alert-window">
		<div id="reconnect-alert" class="alert alert-dismissable alert-warning clearfix hide" component="toaster/toast">
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
			<p>[[global:reconnecting-message, {config.siteTitle}]]</p>
		</div>
	</div>
	<!-- ENDIF !isSpider -->

	<script defer src="{relative_path}/assets/nodebb.min.js?{config.cache-buster}"></script>

	{{{each scripts}}}
	<script defer type="text/javascript" src="{scripts.src}"></script>
	{{{end}}}

	<script>
		window.addEventListener('DOMContentLoaded', function () {
			require(['forum/footer']);

			<!-- IF useCustomJS -->
			{{customJS}}
			<!-- ENDIF useCustomJS -->
		});
	</script>

	<div class="hide">
	<!-- IMPORT 500-embed.tpl -->
	</div>

	<div id="newTopic" style="display: none; position: fixed; right: 3rem; bottom: 10rem">
		<a class="floating-a">
			<i id="new_topic" href="#" class="fa fa-upload topic-position-fix"></i>
		</a>
	</div>
	<div id="scroll" style="display: none; position: fixed; right: 3rem; bottom: 4rem">
		<a class="floating-a">
			<i class="fa fa-angle-up position-fix"></i>
		</a>
	</div>

	<style type="text/css">
		.topic-position-fix {
			color: #c2cfd7;
			position: relative;
			top: 2px;
			display: inline-block;
			font-style: normal;
			line-height: 1;
		}
		.position-fix {
			font-size: 4rem;
			font-weight: bolder;
			color: #c2cfd7;
			position: relative;
			top: 2px;
			display: inline-block;
			font-style: normal;
			line-height: 1;
		}
		.floating-a {
			font-size: 3rem;
			display: block;
			width: 5rem;
			height: 5rem;
			text-align: center;
			line-height: 4rem;
			-webkit-box-shadow: rgba(15,37,64,0.1) 0 5px 15px 0;
			box-shadow: rgba(15,37,64,0.1) 0 5px 15px 0;
			cursor: pointer;border-radius: 50%;
			background: #fff;
			opacity: 80%;
			transition: bottom 0.3s ease 0s;
		}
		.position-fix:hover {
			cursor: pointer;
			color: #F8BD2C;
		}
		.topic-position-fix:hover {
			cursor: pointer;
			color: #F8BD2C;
		}
		@media only screen and (max-width: 576px) {
			.footer {
				display: none !important;
			}
		}
		.footer {
			padding-top: 20px;
			padding-left: 40px;
			padding-right: 40px;
			font-size: 14px !important;
		}
		.footer-left {
			padding: 20px;
			margin-left: 50px;
			position: relative;
			top: -7px;
		}
		.footer-right {
			padding: 20px;
			margin-right: 200px;
			position: relative;
			top: -7px;
		}
		.footer-right-text {
			padding-top: 45px;
		}
		.text-info {
			font-size: 18px;
			text-align: right;
			font-weight: bolder;
			color: #222222;
			margin: 5px;
		}
		.footer-button {
			position: relative;
			top: -27px;
		}
		.footer-firstline {
			display: flex;
		}
		.footer-space {
			flex: 1 auto;
		}
		.footer-logo {
			margin-right: 80px;
			width: 40px;
			height: 40px;
		}
		.footer-info-list {
			text-decoration: none;
			margin-right: 50px;
		}
		.footer-ugc-list {
			margin-right: 50px;
		}
		.footer-info-list li{
			margin-bottom: 20px;
		}
		.footer-info-list li a{
			color: black;
		}
		.footer-ugc-list li a{
			color: black;
		}
		.share-icons {
			margin-top: 20px;
		}
		li {
			list-style-type: none;
		}
		.line-copy-8 {
			box-sizing: border-box;
			width: 1219px;
			border: 0.5px solid #222222;
			opacity: 0.2;
		}
		.footer-orange-shadow .footer-right-text {
			display: block;
			font-weight: bolder;
			padding: 0 20px;
			position: relative;
			overflow: hidden;
		}
		.footer-orange-shadow .footer-right-text:before {
			content: "";
			position: absolute;
			bottom: 0;
			background-color: #F8BD2C;
			height: 55%;
			width: 70%;
			z-index: -1;
			left: 14%;
			top: 23%;
		}
	</style>

</body>
</html>
