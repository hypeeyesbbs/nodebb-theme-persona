<!-- IMPORT partials/breadcrumbs.tpl -->
<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
<div class="row">
	<div class="topic <!-- IF widgets.sidebar.length -->col-lg-9 col-sm-12<!-- ELSE -->col-lg-9<!-- ENDIF widgets.sidebar.length -->">

		<h1 class="post-header-title" component="post/header" class="hidden-xs" itemprop="name">
			<span class="pull-left topic-title <!-- IF !pinned -->hidden<!-- ENDIF !pinned -->" title="[[topic:pinned]]">🔥</span>
			<span class="pull-left topic-title <!-- IF !locked -->hidden<!-- ENDIF !locked -->" title="[[topic:locked]]">🔒</span>
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

					<!-- IF !posts.index -->
					<!-- IMPORT partials/topic/post.tpl -->
					<div class="post-bar-placeholder"></div>
					<!-- ELSE -->
					<!-- IMPORT partials/topic/post-reply.tpl -->
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
