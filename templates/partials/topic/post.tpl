<div class="clearfix post-header" style="display: flex; align-items: center;">
	<div class="icon pull-left">
		<a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->">
			{buildAvatar(posts.user, "sm2x", true, "", "user/picture")}
			<i component="user/status" class="fa fa-circle status {posts.user.status}" title="[[global:{posts.user.status}]]"></i>
		</a>
	</div>

	<div style="display: flex;flex: 1 auto; font-size: 17px;">
		<strong style="margin-right: 10px;">
			<a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->" itemprop="author" data-username="{posts.user.username}" data-uid="{posts.user.uid}">{posts.user.username}</a>
		</strong>

		<!-- IMPORT partials/topic/badge.tpl -->

		<!-- IF posts.user.banned -->
		<span class="label label-danger">[[user:banned]]</span>
		<!-- ENDIF posts.user.banned -->

		<div class="post-header-space" style="flex: 1 auto;"></div>

		<span class="visible-xs-inline-block visible-sm-inline-block visible-md-inline-block visible-lg-inline-block">
			<a class="permalink" href="{config.relative_path}/post/{posts.pid}" style="color: #969696; font-weight: 200; font-size: 15px"><span class="timeago" title="{posts.timestampISO}"></span></a>

			<i component="post/edit-indicator" class="fa fa-pencil-square<!-- IF privileges.posts:history --> pointer<!-- END --> edit-icon <!-- IF !posts.editor.username -->hidden<!-- ENDIF !posts.editor.username -->"></i>

			<small data-editor="{posts.editor.userslug}" component="post/editor" class="hidden">[[global:last_edited_by, {posts.editor.username}]] <span class="timeago" title="{posts.editedISO}"></span></small>

			<!-- IF posts.toPid -->
			<a component="post/parent" class="btn btn-xs btn-default hidden-xs" data-topid="{posts.toPid}" href="{config.relative_path}/post/{posts.toPid}"><i class="fa fa-reply"></i> @<!-- IF posts.parent.username -->{posts.parent.username}<!-- ELSE -->[[global:guest]]<!-- ENDIF posts.parent.username --></a>
			<!-- ENDIF posts.toPid -->

			<span>
				<!-- IF posts.user.custom_profile_info.length -->
				&#124;
				{{{each posts.user.custom_profile_info}}}
				{posts.user.custom_profile_info.content}
				{{{end}}}
				<!-- ENDIF posts.user.custom_profile_info.length -->
			</span>
		</span>
		<span class="bookmarked"><i class="fa fa-bookmark-o"></i></span>

	</div>
</div>

<br />

<div class="content" component="post/content" itemprop="text">
	{posts.content}
</div>

<div class="clearfix post-footer">
	<!-- IF posts.user.signature -->
	<div component="post/signature" data-uid="{posts.user.uid}" class="post-signature">{posts.user.signature}</div>
	<!-- ENDIF posts.user.signature -->

	<div class="post-inline" style="display: flex;">
		<a component="post/upvote" href="#" class="button button-toggle button-grey <!-- IF posts.upvoted -->upvoted<!-- ENDIF posts.upvoted -->" style="padding: 0 16px;">
			点赞 |
			<div class="vote-count">
				<span component="post/vote-count" data-votes="{posts.votes}">{posts.votes}</span>
			</div>
		</a>

<!--		<div class="upvote-buttom">-->
<!--			<a component="post/upvote" href="#" class="&lt;!&ndash; IF posts.upvoted &ndash;&gt;upvoted&lt;!&ndash; ENDIF posts.upvoted &ndash;&gt;">-->
<!--				<i class="fa fa-thumbs-o-up"></i>-->
<!--			</a>-->
<!--			<div class="vote-buttom" style="display: inline ">-->
<!--				<span component="post/vote-count" data-votes="{posts.votes}">{posts.votes}</span>-->
<!--				{posts.reactions}-->
<!--			</div>-->
<!--		</div>-->

		<div class="post-space" style="flex: 1 auto;"></div>

		<div class="post-edit">
			<!--		<span component="post/editor" class="&lt;!&ndash; IF !posts.editor.username &ndash;&gt;hidden&lt;!&ndash; ENDIF !posts.editor.username &ndash;&gt;"><strong><a href="{config.relative_path}/user/{posts.editor.userslug}">[[global:last_edited_by, {posts.editor.username}]]</a></strong> <span class="timeago" title="{posts.editedISO}"></span></span>-->
			<div class="post-share">
				<!--			<div class="fs-13 text-white" style="display: inline; margin-right: 12px">分享给朋友</div>-->
				<button class="button button-grey button-circle button-wechat">
					<a href="https://mp.weixin.qq.com/s/FYOiA6S19dgA-DlQCa9AkQ" target="_blank" class="fa fa-wechat"></a>
				</button>
				<button class="button button-grey button-circle button-instagram">
					<a href="https://www.instagram.com/hypeeyes_official/" target="_blank" class="fa fa-instagram"></a>
				</button>
				<button class="button button-grey button-circle button-twitter">
					<a role="menuitem" component="share/twitter" tabindex="-1" href="#" class="fa fa-twitter"></a>
				</button>
			</div>
		</div>
	</div>

	<div class="post-tools-inline pull-right" style="padding: 15px">
		<span class="post-tools">
			<a component="post/reply" href="#" class="no-select <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->">[[topic:reply]]</a>
			<a component="post/quote" href="#" class="no-select <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->">[[topic:quote]]</a>
		</span>
		<small>
			<!-- IMPORT partials/topic/post-menu.tpl -->
		</small>
	</div>

	<!-- IF !hideReplies -->
	<a component="post/reply-count" href="#" class="threaded-replies no-select <!-- IF !posts.replies.count -->hidden<!-- ENDIF !posts.replies.count -->">
		<span component="post/reply-count/avatars" class="avatars <!-- IF posts.replies.hasMore -->hasMore<!-- ENDIF posts.replies.hasMore -->">
			{{{each posts.replies.users}}}
			{buildAvatar(posts.replies.users, "xs", true, "")}
			{{{end}}}
		</span>

		<span class="replies-count" component="post/reply-count/text" data-replies="{posts.replies.count}">{posts.replies.text}</span>
		<span class="replies-last hidden-xs">[[topic:last_reply_time]] <span class="timeago" title="{posts.replies.timestampISO}"></span></span>

		<i class="fa fa-fw fa-chevron-right" component="post/replies/open"></i>
		<i class="fa fa-fw fa-chevron-down hidden" component="post/replies/close"></i>
		<i class="fa fa-fw fa-spin fa-spinner hidden" component="post/replies/loading"></i>
	</a>
	<!-- ENDIF !hideReplies -->
</div>

<hr/>
