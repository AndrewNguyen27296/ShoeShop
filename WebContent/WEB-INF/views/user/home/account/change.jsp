<%@ page pageEncoding="utf-8"%>
<style>
	.registration {
	    padding: 0;
	    margin: auto;
	}
	.registration_left {
	    float: none;
	    width: 80%;
	}
	.registration_form input[type="text"],
	.registration_form input[type="email"],
	.registration_form input[type="tel"],
	.registration_form input[type="password"] {
		padding: 8px;
	    display: block;
	    width: 100%;
	    outline: none;
	    font-family: 'Open Sans', sans-serif;
	    font-size: 0.8925em;
	    color: #333333;
	    -webkit-appearance: none;
	    text-transform: none;
	    background: #FFFFFF;
	    border: 1px solid rgb(231, 231, 231);
	    font-weight: normal;
	}
</style>
<!-- start registration -->
<div class="col-md-9">
	<div class="registration">
		<div class="registration_left">
			<h2>Change password? <span> Do it right now  </span></h2>
			<div class="registration_form">
				<!-- Form -->
				<form id="registration_form" action="account/change" method="post">
					<div>
						<label> 
							<input name="id" placeholder="Username:" type="text"/>
						</label>
					</div>
					<div>
						<label> 
							<input name="password" placeholder="Current Password:" type="password"/>
						</label>
					</div>
					<div>
						<label> 
							<input name="password1" placeholder="New Password:" type="password"/>
						</label>
					</div>
					<div>
						<label> 
							<input name="password2" placeholder="Confirm Password:" type="password">
						</label>
					</div>
					<div>
						<input type="submit" value="Change Password" id="register-submit"/>
					</div>
				</form>
				<!-- /Form -->
				<hr>
				<h4>${message}</h4>
			</div>
		</div>	
		<div class="clearfix"></div>
	</div>
</div>
<!-- end registration -->

