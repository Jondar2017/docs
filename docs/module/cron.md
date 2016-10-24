### 计划任务

计划任务是一项使系统在规定时间自动执行某些特定任务的功能,合理设置执行时间，能有效地为服务器减轻负担。触发任务除系统指定的时间外，用户行为也可触发。触发任务的任务周期只是初始值。

想要执行计划任务，需要一个触发媒介

#### 独立主机

独立主机用户可以在系统增加计划任务间隔20秒执行访问[http://网站地址/index.php?g=Cron&m=Index&a=index]

- Linux 下

```
0/20 0/1 * * * curl http://网站地址/index.php?g=Cron&m=Index&a=index
```

参考：[Cron表达式生成器](http://www.pdtools.net/tools/becron.jsp)

- Windows 使用计划任务


#### 2. 虚拟主机用户

虚拟主机用户，需要在网站模板中最底部增加一个js调用:

```    
<script type="text/javascript" src="http://网站地址/index.php?g=Cron&m=Index&a=index"></script>
```


### 使用

关于计划任务的添加，您需要上传相应执行文件到 

1. 创建定时任务：在 `app/Cron/` 目录下,新建计划任务文件，文件名必须为`CMSxx.php`(以CMS开头)形式

样例：
```php
<?php

// +----------------------------------------------------------------------
// | 计划任务 - 示例脚本
// +----------------------------------------------------------------------

namespace CronScript;

class CMSDemo {

	//任务主体
	public function run($cronId) {
		\Think\Log::record("我执行了计划任务事例 CMSDemo.php！");
	}

}
```

2. 在计划任务管理页面注册计划任务

 ![图片](https://dn-coding-net-production-pp.qbox.me/8acc7c4f-7145-410a-99ec-c8c097c5c9d3.png) 
