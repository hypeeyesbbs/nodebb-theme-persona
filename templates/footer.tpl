		</div><!-- /.container#content -->
	</main>

		<footer class="footer">
			<div class="footer-firstline">
				<div class="footer-left text-left" style="color: rgb(102, 102, 102); display: flex">
					<img class="footer-logo" src="https://pbs.twimg.com/media/DywoAz7W0AA6mkP.jpg:large">
					<div class="footer-pgc-list">
						<li>
							<a href="/custom">潮目首页</a>
						</li>
						<li>
							<a href="/custom/categories/1/">潮目秘籍</a>
						</li>
						<li>
							<a href="/custom/categories/4">潮流百科</a>
						</li>
						<li>
							<a href="/custom/categories/8">美图细赏</a>
						</li>
					</div>
					<div class="footer-ugc-list">
						<li>
							<a href="/category/12">潮目社区</a>
						</li>
					</div>
				</div>
				<div class="footer-space"></div>
				<div class="footer-right" style="color: rgb(102, 102, 102);">
					<a class="fs-13 text-white" style="margin-right:15px;position:relative;color:#666666;" href="/aboutus" target="_blank">关于我们</a>
					<!-- <a class="fs-13 text-white"
					style="margin-right:15px;position:relative;top:-2px;" href="http://nowre.com/Contact"  target="_blank">联系我们</a> -->
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
			<!--			<div class="footer-button text-center" style="color: rgb(102, 102, 102);">-->
			<!--				© HYPEEYES.COM 2019 &nbsp; | &nbsp;-->
			<!--				<a class="fs-13 text-white" style="position:relative; color: rgb(102, 102, 102);" href="http://www.miitbeian.gov.cn" target="_blank">-->
			<!--					沪ICP备1234567-->
			<!--				</a> &nbsp; | &nbsp;	广播电视节目制作经营许可证（泸）字第9999号-->
			<!--			</div>-->
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

	<div><i id="scroll" style="display: none;" class="fa fa-chevron-circle-up position-fix"></i></div>

	<style type="text/css">
		.position-fix {
			position: fixed;
			bottom: 20px;
			right: 20px;
			font-size: 40px;
			color: #FF5000;
		}
		.position-fix:hover {
			cursor: pointer;
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
			background-color: rgb(53, 53, 53);
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
		.footer-pgc-list {
			margin-right: 50px;
		}
		.footer-ugc-list {
			margin-right: 50px;
		}
		.footer-pgc-list li{
			margin-bottom: 20px;
		}
		.footer-pgc-list li a{
			color: #666666;
		}
		.footer-ugc-list li a{
			color: #666666;
		}
		.share-icons {
			margin-top: 20px;
		}
	</style>

</body>
</html>
