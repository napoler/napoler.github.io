---
layout: post
title: 'Drupal的群组模块Organic Groups介绍-Drupal每日推荐一模块'
permalink: '/2014/04/drupalorganic-groups-drupal.html'
comments: 1
categories: Default
tags: drupal模块 Drupal Drupal每日推荐一模块 Organic Groups模块
comments: 1
---
<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">本文内容基本出自Organic Groups模块的README.txt。做此笔记（或者说翻译）的过程，也是我阅读熟悉此模块的过程。Organic Groups模块信息及下载可参考：http://drupal.org/project/og 。</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">Drupal核心只提供了简单的用户、角色、权限等功能，其中角色、权限都是全局的，没有用户组的概念，更不可能将内容发布到用户组的主页上。 Drupal被认为最擅长做社区，如果社区要按用户的爱好分成一些用户组，每个组有一个自己的小主页，成员可以发表内空到用户组的主页上，应该如何实现 呢？答案就是Organic Groups模块。</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">Organic Groups模块介绍</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">Organic Groups模块使用户可以创建并管理他们自己的“组”。每个组可以拥有成员，并维护一个可供成员发贴（注：“贴”应理解为广义的，不局限于论坛发的帖 子，对Drupal来说可以是blog, story, page等类型）的组主页。用户的帖子可以发布到多个组，而且可以选择是否与非组成员分享。组成员可以是开放式(open)、封闭式(closed)、编 辑审核式(moderated)，也可以是只能邀请(invitation only)。Drupal的其它附加模块对组像册、组日历、组词汇表（分类系统），组事件（Drupal的一种常用内容类型叫story）等等都是有效 的。</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">每个组可以选择他们自己的主题和语言。组拥有RSS Feeds和Email通知等。组管理员可以定制组主页及其它相关页面的布局与内容（需要即将到来的OG Panels module）。</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">安装Organic Groups模块</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">开启Organic groups和Organic groups Views intergration modules。如果你需要定制组内帖子的访问权限，Organic Groups access control模块也需要开启。请在启用其它OG相关模块之前确定OG已经能够正常工作。</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">找到Administer &gt; Organic groups configuration page，看上面的内容类型列表。点击类型旁边的edit，在随后出现的页面可以设定Organic groups usage，你可以在此指派节点类型为用户组节点。指派为用户组的节点类型应该禁用掉评论、附件功能。通常，你可能想通过admin/content /types页面创建一个新的类型用以指派为用户组节点。参考下文注意事项第一项</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">在admin/og/og设定其它偏好。你可能需要一些试验才能得到一个满足需求的配置组合。</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">找到Administrater &gt; Site building &gt; Blocks页面，开启“Group details”并拖到你的列表上方。你还可以选择是否开启其它一些“Group”的区块。</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">在admin/user/permission页面，根据需要进行权限授权。</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">开始创建组（node/add），加入这些组并发贴。对于非只限邀请的组，“加入”链接会出现在组描述区块。</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">考虑开启下列与OG兼容很好的模块：Pathauto, Locale, Notifications。在你的安装能够完好工作之后，可以考虑开启更多的OG附加模块，像og_mandatory_group, og_vocab, 以及og_panels。已知这些模块工作得很好。有些集成得不好的Drupal模块可能会带来一些问题。请参考：http://drupal.org/project/Modules/category/90 。</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">注意事项</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">此模块支持指派任何节点类型来扮演用户组的角色。这个节点类型应该由自定义模块来定义，或者通过admin/content/types页面创 建。定义好之后，此类型内容的标题即是组名，内容则是“欢迎信息”。由于所有此类型的节点都会被视为用户组，你通常不应指派标准的page, story, 或book类型为用户组。自定义类型可以指派为用户组的这一特性，使你能够为用户组设置自定义字段，甚至可以为不同类型的用户组设定不同的 CCK（Drupal的一个功能强大的模块，用于自定义节点类型）字段。</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">路径“group”有一些便利的tabs。你可以为这些tabs添加一个导航链接。每个tab均提供了有用的RSS Feed。</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">“Administer nodes”权限是更改组管理员所必需的（更改帖子作者也是这样）。</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">“Administer nodes”权限也可以查看所有节点，无论状态是公开还是私有。</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">所有成员管理操作都在“membership list”页面，当你访问一个组页面时，组描述区块会有相应链接。你可以验证成员请求，添加、移除用户以及设置组管理员。</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">如果你想停用Organic groups，像其它模块一样禁用掉即可。如果你将来重新启用，你之前的组访问控制信息会被恢复。如果你想全新开始，请卸载og， og_views和og_access模块，然后重新安装。</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">开发人员与站点构建人员</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">你可以定制自己的URLs来实现有用的特性。比如：user/register?gids[]=4 会在用户注册页面加添一个默认选中的复选框用来定阅nid=4的组。这一特性会覆盖掉组偏好设置。</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">你可以使用hook_og_links_alter($links, $group_node)来改变组描述区块中的链接。参考og_block_details()。</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">当前组上下文对javascript代码（Drupal.settings.og）有效。这对丰富广标签和分析组访问信息比较有用。</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">可以用Views Bulk Operations模块来大批量更新用户的组员关系和内容从属。</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">主题</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">你可能想定制含有OG模块属性的节点的样式。</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">公开与私有帖子的区分请使用$node-&gt;og_public (og_access提供了私有帖子)。</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">此模块包提供了两个模板文件，默认会同时用于组和组内帖子。这可当作你自定义的开始：把它们（之一或全部）复制到你的主题目录下，并按 需求编辑。你的主题目录必须同时覆盖实现node.tpl.php。你也可以使用og_panels模块来实现自定义组主页及其它相关页面，并允许组管理 员设计它们。</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">集成</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">建议开启Notifications/Messaging模块的cron功能。有了cron功能，组邮件通知会在cron运行时发送，而不是有新内容时立即发送。这会大大加快较大用户组内的发帖速度。这个延时也给了作者修正打字错误的时机。</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">此模块暴露一个API，用来通过PHP函数[og_save_subscription()]及通过XMLRPC接收和管理组员。</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">转自：http://www.liuhaifeng.com/2010/08/organic-groups-module-of-drupal.html</div>