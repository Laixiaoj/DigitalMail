<?php 
	session_start();
?>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/mystyle.css" type="text/css">
</head>
<div class="shop_header">
	
    	<h1 style="color: #3366FF;"><img src="uploads/logo.png" class="logo"></h1>

    	<div class="search_bar" style="margin-top: 15px;">
    		<form action="<?php echo $_SERVER['PHP_SELF'];?>">
    			<input type="text" name="searchword" autocomplete="off" value="<?php if(isset($_GET['searchword'])) echo $_GET['searchword'];?>"><button class="op_btn" style="border-radius: 0;border: 0;height: 36px;">搜索</button>
    		</form>
    	</div>
		
    	<div class="login_register_bar" style="margin-top: 20px;">
    		<?php 
    			if(isset($_SESSION) && isset($_SESSION['userId']) && $_SESSION['userId']){
    		?>
    		<?php 
    				if($_SESSION['adminId']){ // 管理员栏
    		?>
			<a href="admin.php">系统管理</a>
			<span>|</span>
			<a href="loginAction.php?act=logout">退出</a>

    		<?php 
    				}else{ // 用户栏
    		?>
			
    		<a href="myOrderList.php">我的订单</a>  
    		<span>|</span>
    		<a href="loginAction.php?act=logout">退出</a>
    		<?php 
    				}
    		?>
    			
    		<?php 
    			}else{ // 默认栏
    		?>
			<div class="search_bar" style="margin-top: 15px;">
    			<a href="login.php">用户登录</a>
    			<span>|</span>
				<a href="uLogin.php">管理员登录</a>
				<span>|</span>
				<a href="register.php">用户注册</a>
			</div>
    		<?php 
    			}
    		?>
    		
    		
    	</div>
    </div>
    <div class="shop_nav">
    	<ul>
    		<a href="index.php"><li>首页</li></a>
    		<a href="myOrderList.php"><li>我的订单</li></a>
    		<?php 
    			if(isset($_SESSION) && isset($_SESSION['userId']) && $_SESSION['userId']){
    		?>
    		<a href="updatePwd.php"><li>修改密码</li></a>
    		<?php 
    			}
    		?>
    	</ul>
    </div>