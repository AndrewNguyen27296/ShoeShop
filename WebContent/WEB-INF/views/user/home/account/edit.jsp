<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
			<h2>Edit <span>Your Profiles</span></h2>
			<div class="registration_form">
				<!-- Form -->
				<form:form modelAttribute="user" id="registration_form" action="account/edit" method="POST" enctype="multipart/form-data">
					<div>
						<label> 
							<input placeholder="Username:" readonly="true" value="${user.id}" type="text"/>
							<form:hidden path="id"/>
						</label>
					</div>
					<form:hidden path="password"/>
					<div>
						<label> 
							<form:input path="fullName" placeholder="Fullname:"/>
						</label>
					</div>
					<div>
						<label> 
							<form:input path="email" placeholder="Email:"/>
						</label>
					</div>
					<div>
						<label> 
							<input name="upphoto" type="file"/>	
							<form:hidden path="photo"/>								
							<img src="assets/upload/customers/files/${user.photo}" width="100" height="100" style="margin-top: 20px;">											
						</label>
					</div>	
					<form:hidden path="activated"/>
					<div>
						<input type="submit" value="Save Change" id="register-submit"/>
					</div>
				</form:form>
				<!-- /Form -->
				<hr>
				<h4>${message}</h4>
			</div>
		</div>	
		<div class="clearfix"></div>
	</div>
</div>
<!-- end registration -->