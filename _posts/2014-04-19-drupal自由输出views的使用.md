---
layout: post
title: 'drupal 自由输出views的使用'
permalink: '/2014/04/drupal-views_19.html'
comments: 1
categories: Default
tags: drupal模块 分页 views node_load
comments: 1
---
views使用指南

views\_get\_view（）方法

1.想自由的编排由view模块生成出来的数据，就像使用node\_load一样？想自由地给view传参，并输出在页面的任意地方？想自由的控制当前view模块所显示的分页分页数页上多少个结果？同一个view在一个地方输出10行/页在另一个地方输出20行/页？

2.所有上面的功能以及viewsUI没法做到的都能由views scriptly完成，主要用到就是views\_get\_view这个API \[例子一:用代码输出views\]

创建printviews.php,这个PHP下只有下面的代码：

&lt;?php chdir(‘/home2/crawgirl/public\_html/feedme/’);//注释掉或者改为你自己的站的目录

require\_once ‘./includes/bootstrap.inc’;

drupal\_bootstrap(DRUPAL\_BOOTSTRAP\_FULL);

//下面的代码才是views相关的

$views=views\_get\_view(“viewtest”);

$views-&gt;preview();

$results=$views-&gt;result; //下面的代码与views无关的

print\_r($results);

//print $results\[2\]\[node\_title\];//只输出第三个结果的node的标题

$views=NULL;$results=NULL;

?&gt;

（输出时要结果好看，请查看输出的HTML源码）

点击看完整的输出的结果。

所以，你会发现这是一个PHP的array.

如果你要输出views的第三行的结果的TITLE的话：去掉print地行的注释即可 \[例子二:传入argument(参数)\]

只输出termId=3的结果，就是说输出那些是属于分类ID是3的结果，注意，只比上面的多了加红的一行：

新建argviews.php,只有下面几行代码：

&lt;?php chdir(‘/home2/crawgirl/public\_html/feedme/’);

require\_once ‘./includes/bootstrap.inc’;

drupal\_bootstrap(DRUPAL\_BOOTSTRAP\_FULL);

$views=views\_get\_view(“viewtest”);

$views-&gt;set\_arguments(array(3));

$views-&gt;preview();

$results=$views-&gt;result;

print\_r($results);

//print $results\[2\]\[node\_title\];//只输出第三个结果的node的标题

$views=NULL;$results=NULL;

?&gt; 输出结果的结构与例子一的情况一样，只是结果变了 \[例子三:控制输出的结果数\]

目前我们的结果都是只输出10个结果，我现在想输出50个结果。

对比例子一：只增加了加红的两行

新建viewsnum.php,只输入下面的几行

&lt;?php chdir(‘/home2/crawgirl/public\_html/feedme/’);

require\_once ‘./includes/bootstrap.inc’;

drupal\_bootstrap(DRUPAL\_BOOTSTRAP\_FULL);

$views=views\_get\_view(“viewtest”);

$views-&gt;set\_display(‘default’);

$views-&gt;display\_handler-&gt;set\_option(‘items\_per\_page’ , 50);

$views-&gt;preview();

$results=$views-&gt;result;

print\_r($results);

//print $results\[2\]\[node\_title\];//只输出第三个结果的node的标题

$views=NULL;$results=NULL;

?&gt; \[例子四:输出views的HTML\]

print $views-&gt;preview(); 请自行举一反三，完成上面的代码 \[例子五:控制是否分页\]

$views-&gt;display\_handler-&gt;set\_option(‘use\_pager’,1); 当为0时则不分页 \[例子六：控制当前显示在views的第三页而不是默认的第一页结果\]

$views=views\_get\_view(“viewtest”);

//$views-&gt;args=array(1);

$views-&gt;pager\[“use\_pager”\]=1;//要分页

$views-&gt;pager\[“items\_per\_page”\]=40;//每页40个

$views-&gt;pager\[“current\_page”\]=3;//定位到第3页

$views-&gt;execute();//执行

print\_r($views-&gt;result);

不要问我这里为什么分页的用的代码与前面不一样，我只能说这里的机制与上面几个例子的机制是不一样的，上面的几个例子用的是preview方法，而这里用的是execute方法，这完全是views的设计者设计出来的。当然，你可以都改为这个例子的设定，但就我发现，在大规模测试的时候，我发现execute的性能比preview要差一点点(并不明显). \[例子七：举一反三，输出总的结果数\]

看例子六，在例子六的基础上，加上var\_dump($views);看看输出的结果变化情况如何?在什么地方加？你自己去试吧，动手才是关键啊。

再想想，怎么输出分页的views的总的结果数。

有朋友曾经问我，这个方法能不能重写filter,我说可以，但我反问他一句，有argument放着不用，为什么要浪费时间重写filter？ \[例子八：更上一层楼\]

对比一下上面七个例子中的代码与这个view的源代码：view:import ，需要什么功能要用代码实现的，只需要先用viewsUI去生成一个模板的view，然后。。。。---
layout: post
title: 'drupal 自由输出views的使用'
permalink: '/2014/04/drupal-views.html'
comments: 1
categories: Default
tags: drupal模块 分页 views node_load
comments: 1
---
views使用指南  
  
views_get_view（）方法  
  
  
  
1.想自由的编排由view模块生成出来的数据，就像使用node_load一样？想自由地给view传参，并输出在页面的任意地方？想自由的控制当前view模块所显示的分页\分页数\页上多少个结果？同一个view在一个地方输出10行/页在另一个地方输出20行/页？  
  
  
  
2.所有上面的功能以及viewsUI没法做到的都能由views scriptly完成，主要用到就是views_get_view这个API [例子一:用代码输出views]  
  
  
  
创建printviews.php,这个PHP下只有下面的代码：  
  
  
  
&lt;?php chdir(‘/home2/crawgirl/public_html/feedme/’);//注释掉或者改为你自己的站的目录  
  
  
  
require_once ‘./includes/bootstrap.inc’;  
  
  
  
drupal_bootstrap(DRUPAL_BOOTSTRAP_FULL);  
  
  
  
//下面的代码才是views相关的  
  
  
  
$views=views_get_view(“viewtest”);  
  
  
  
$views-&gt;preview();  
  
  
  
$results=$views-&gt;result; //下面的代码与views无关的  
  
  
  
print_r($results);  
  
  
  
//print $results[2][node_title];//只输出第三个结果的node的标题  
  
  
  
$views=NULL;$results=NULL;  
  
  
  
?&gt;  
  
  
  
（输出时要结果好看，请查看输出的HTML源码）  
  
  
  
点击看完整的输出的结果。  
  
  
  
所以，你会发现这是一个PHP的array.  
  
  
  
如果你要输出views的第三行的结果的TITLE的话：去掉print地行的注释即可 [例子二:传入argument(参数)]  
  
  
  
只输出termId=3的结果，就是说输出那些是属于分类ID是3的结果，注意，只比上面的多了加红的一行：  
  
  
  
新建argviews.php,只有下面几行代码：  
  
  
  
&lt;?php chdir(‘/home2/crawgirl/public_html/feedme/’);  
  
  
  
require_once ‘./includes/bootstrap.inc’;  
  
  
  
drupal_bootstrap(DRUPAL_BOOTSTRAP_FULL);  
  
  
  
$views=views_get_view(“viewtest”);  
  
  
  
$views-&gt;set_arguments(array(3));  
  
  
  
$views-&gt;preview();  
  
  
  
$results=$views-&gt;result;  
  
  
  
print_r($results);  
  
  
  
//print $results[2][node_title];//只输出第三个结果的node的标题  
  
  
  
$views=NULL;$results=NULL;  
  
  
  
?&gt; 输出结果的结构与例子一的情况一样，只是结果变了 [例子三:控制输出的结果数]  
  
  
  
目前我们的结果都是只输出10个结果，我现在想输出50个结果。  
  
  
  
对比例子一：只增加了加红的两行  
  
  
  
新建viewsnum.php,只输入下面的几行  
  
  
  
&lt;?php chdir(‘/home2/crawgirl/public_html/feedme/’);  
  
  
  
require_once ‘./includes/bootstrap.inc’;  
  
  
  
drupal_bootstrap(DRUPAL_BOOTSTRAP_FULL);  
  
  
  
$views=views_get_view(“viewtest”);  
  
  
  
$views-&gt;set_display(‘default’);  
  
  
  
$views-&gt;display_handler-&gt;set_option(‘items_per_page’ , 50);  
  
  
  
$views-&gt;preview();  
  
  
  
$results=$views-&gt;result;  
  
  
  
print_r($results);  
  
  
  
//print $results[2][node_title];//只输出第三个结果的node的标题  
  
  
  
$views=NULL;$results=NULL;  
  
  
  
?&gt; [例子四:输出views的HTML]  
  
  
  
print $views-&gt;preview(); 请自行举一反三，完成上面的代码 [例子五:控制是否分页]  
  
  
  
$views-&gt;display_handler-&gt;set_option(‘use_pager’,1); 当为0时则不分页 [例子六：控制当前显示在views的第三页而不是默认的第一页结果]  
  
  
  
$views=views_get_view(“viewtest”);  
  
  
  
//$views-&gt;args=array(1);  
  
  
  
$views-&gt;pager["use_pager"]=1;//要分页  
  
  
  
$views-&gt;pager["items_per_page"]=40;//每页40个  
  
  
  
$views-&gt;pager["current_page"]=3;//定位到第3页  
  
  
  
$views-&gt;execute();//执行  
  
  
  
print_r($views-&gt;result);  
  
  
  
不要问我这里为什么分页的用的代码与前面不一样，我只能说这里的机制与上面几个例子的机制是不一样的，上面的几个例子用的是preview方法，而这里用的是execute方法，这完全是views的设计者设计出来的。当然，你可以都改为这个例子的设定，但就我发现，在大规模测试的时候，我发现execute的性能比preview要差一点点(并不明显). [例子七：举一反三，输出总的结果数]  
  
  
  
看例子六，在例子六的基础上，加上var_dump($views);看看输出的结果变化情况如何?在什么地方加？你自己去试吧，动手才是关键啊。  
  
  
  
再想想，怎么输出分页的views的总的结果数。  
  
  
  
有朋友曾经问我，这个方法能不能重写filter,我说可以，但我反问他一句，有argument放着不用，为什么要浪费时间重写filter？ [例子八：更上一层楼]  
  
  
  
对比一下上面七个例子中的代码与这个view的源代码：view:import ，需要什么功能要用代码实现的，只需要先用viewsUI去生成一个模板的view，然后。。。。