<?php
 if (isset($_SESSION['check'])&&$_SESSION['check']==false){
	echo '<script>
	swal("Login Failed", "", "error");</script>' ;
	unset($_SESSION['check']);
 }
?>
<div class="wrapper">
	<div class="container">
		<p style="font-size:25px">Welcome</p>
        <h1><b>SNS FORUMS</b></h1>
        </br></br>
        
		<form class="form" action="" method="POST">
			<input type="text" placeholder="Username" required="true" name="login_username">
            </br>
			<input type="password" placeholder="Password" required="true" name="login_pass">
            </br>
			<button type="submit" id="login-button" name="btn_login">Login</button>
            </br>
            </br>
            <div>
                <p class="text-center">Not a member? &nbsp;&nbsp;&nbsp;&nbsp; <a href="<?php echo BASE_URL;?>/Account/Register" style="color:white">Register</a></p>
            </div>
            
		</form>
        
        
	</div>
	
	<ul class="bg-bubbles">
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
    </div>