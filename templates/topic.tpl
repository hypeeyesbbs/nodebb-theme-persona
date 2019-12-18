<!-- IMPORT partials/breadcrumbs.tpl -->
<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
<div class="row">
	<div class="topic <!-- IF widgets.sidebar.length -->col-lg-9 col-sm-12<!-- ELSE -->col-lg-9<!-- ENDIF widgets.sidebar.length -->">

		<h1 component="post/header" class="hidden-xs" itemprop="name">

			<i class="pull-left fa fa-thumb-tack <!-- IF !pinned -->hidden<!-- ENDIF !pinned -->" title="[[topic:pinned]]"></i>
			<i class="pull-left fa fa-lock <!-- IF !locked -->hidden<!-- ENDIF !locked -->" title="[[topic:locked]]"></i>
			<i class="pull-left fa fa-arrow-circle-right <!-- IF !oldCid -->hidden<!-- ENDIF !oldCid -->" title="[[topic:moved]]"></i>
			{{{each icons}}}@value{{{end}}}

			<span class="topic-title" component="topic/title">{title}</span>
		</h1>

		<!-- IF merger -->
		<div component="topic/merged/message" class="alert alert-warning clearfix">
			<span class="pull-left">[[topic:merged_message, {mergeIntoTid}, {merger.mergedIntoTitle}]]</span>
			<span class="pull-right">
				<a href="{config.relative_path}/user/{merger.userslug}">
					<strong>{merger.username}</strong>
				</a>
				<small class="timeago" title="{mergedTimestampISO}"></small>
			</span>
		</div>
		<!-- ENDIF merger -->

		<!-- IMPORT partials/topic/deleted-message.tpl -->

		<hr class="visible-xs" />

		<ul component="topic" class="posts" data-tid="{tid}" data-cid="{cid}">
			{{{each posts}}}
				<li component="post" class="<!-- IF posts.deleted -->deleted<!-- ENDIF posts.deleted -->" <!-- IMPORT partials/data/topic.tpl -->>
					<a component="post/anchor" data-index="{posts.index}" id="{posts.index}"></a>

					<meta itemprop="datePublished" content="{posts.timestampISO}">
					<meta itemprop="dateModified" content="{posts.editedISO}">

					<!-- IMPORT partials/topic/post.tpl -->
					<!-- IF !posts.index -->
					<div class="post-bar-placeholder"></div>
					<!-- ENDIF !posts.index -->
				</li>
			{{{end}}}
		</ul>

		<!-- IF config.enableQuickReply -->
		<!-- IMPORT partials/topic/quickreply.tpl -->
		<!-- ENDIF config.enableQuickReply -->

		<div class="post-bar">
			<!-- IMPORT partials/post_bar.tpl -->
		</div>

		<!-- IF config.usePagination -->
		<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->

		<div class="navigator-thumb text-center hidden">
			<strong class="text"></strong><br/>
			<span class="time"></span>
		</div>
<!--		<div class="visible-xs visible-sm pagination-block text-center">-->
<!--			<div class="progress-bar"></div>-->
<!--			<div class="wrapper">-->
<!--				<i class="fa fa-2x fa-angle-double-up pointer fa-fw pagetop"></i>-->
<!--				<i class="fa fa-2x fa-angle-up pointer fa-fw pageup"></i>-->
<!--				<span class="pagination-text"></span>-->
<!--				<i class="fa fa-2x fa-angle-down pointer fa-fw pagedown"></i>-->
<!--				<i class="fa fa-2x fa-angle-double-down pointer fa-fw pagebottom"></i>-->
<!--			</div>-->
<!--		</div>-->
	</div>

	<div class="sidebar col-lg-3">
		<div class="sidebar-intro-hypeeyes" data-widget-area="sidebar">
			<div class="subscribe-hypeeyes-title">关注潮目公众号</div>
			<div class="img-wrap" style="text-align: center;">
				<img style="max-width: 100%" src="/assets/uploads/system/qrcode_for_gh.jpg" alt="扫码">
			</div>
		</div>
	</div>

	<div class="sidebar col-lg-3" style="position: sticky; top: 55px">
		<div class="sidebar-intro" data-widget-area="sidebar">
			<div class="post-author-title">热门帖子</div>
			<div class="system-sidebar" data-widget-area="sidebar" class="col-lg-3 col-sm-12 <!-- IF !widgets.sidebar.length -->hidden<!-- ENDIF !widgets.sidebar.length -->">
				{{{each widgets.sidebar}}}
				{{widgets.sidebar.html}}
				{{{end}}}
			</div>

<!--			{{{each posts}}}-->
<!--			&lt;!&ndash; IF @first &ndash;&gt;-->
<!--				<div class="post-author-title">关于作者</div>-->
<!--				<div class="hot-crowd-list">-->
<!--					<div class="user-msg">-->
<!--						<a href="&lt;!&ndash; IF posts.user.userslug &ndash;&gt;{config.relative_path}/user/{posts.user.userslug}&lt;!&ndash; ELSE &ndash;&gt;#&lt;!&ndash; ENDIF posts.user.userslug &ndash;&gt;" class="user-msg-1">-->
<!--							{buildAvatar(posts.user, "sm2x", true, "", "user/picture")}-->
<!--						</a>-->
<!--						<span class="user-msg-2">-->
<!--							<strong style="margin-right: 10px;"> {key}-->
<!--								<a href="">{posts.user.username}</a>-->
<!--							</strong>-->
<!--						</span>-->
<!--					</div>-->
<!--					<div class="attention">-->
<!--						<div class="attention-1">-->
<!--							<div class="icon-follow">-->
<!--								<a target="_blank" id="follow_user" class="img-btn">-->
<!--									关注-->
<!--								</a>-->
<!--							</div>-->
<!--						</div>-->
<!--						<div class="attention-2">-->
<!--							<div class="icon-chat">-->
<!--								<a target="_blank" id="chat_user" class="img-btn">-->
<!--									聊天-->
<!--								</a>-->
<!--							</div>-->
<!--						</div>-->
<!--					</div>-->
<!--				</div>-->
<!--			&lt;!&ndash; ENDIF @first &ndash;&gt;-->
<!--			{{{end}}}-->
		</div>
	</div>
	<div class="suggestion col-lg-9 col-sm-12">
		<div class="popular-topics" data-widget-area="footer">
			{{{each widgets.footer}}}
			{{widgets.footer.html}}
			{{{end}}}
		</div>
	</div>
</div>

<!-- IF !config.usePagination -->
<noscript>
	<!-- IMPORT partials/paginator.tpl -->
</noscript>
<!-- ENDIF !config.usePagination -->
