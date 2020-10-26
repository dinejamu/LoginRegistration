<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<html>
<head><style>
.note
{
text-align: center;
height: 80px;
background: -webkit-linear-gradient(left, #0072ff, #8811c5);
color: #fff;
font-weight: bold;
line-height: 80px;
}
.form-content
{
padding: 5%;
border: 1px solid #ced4da;
margin-bottom: 2%;
}
.form-control{
border-radius:1.5rem;
}
.btnSubmit
{
border:none;
border-radius:1.5rem;
padding: 1%;
width: 20%;
cursor: pointer;
background: #0062cc;
color: #fff;
}
.btnreset
{
    border:none;
    border-radius:1.5rem;
    padding: 1%;
    width: 20%;
    cursor: pointer;
    background: #0062cc;
    color: #FF0000;
}
</style>
</head>
<body><form action="register" method="post" >
<div class="container register-form">
    <div class="form">
        <div class="note">
            <p>This is Register Form for Upcoming Event.</p>
        </div>

        <div class="form-content">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Your Name *" name="StudentName" required/>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="College Name *" name="CollegeName"/>
                    </div>

                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Mobile Number *" name="mobileno" required/>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Percentage *"name="percentage" />
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Backlog*" name="Backlog"/>
                    </div>
                    <div class="form-group">
                        <input type="email" class="form-control" placeholder="Email Id *" name="Emailid" required/>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="Your Password *"name="password" required/>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="Confirm Password *"name="confirmpassword" required onkeyup="check()"/>
                    </div>
                    <span id="message"></span>
                </div>
            </div>
             <button type="submit" class="btnSubmit">Submit</button>
             <button type="reset" class="btnreset">Reset</button>
            &nbsp;&nbsp;&nbsp;if you have already account click here  <a href="welcome.jsp">Login   </a>
        </div>

    </div>
</div>
</form>
<script type="text/javascript">
    var check =function (){
     if(document.getElementById('password').value!=document.getElementById('confirmpassword').value){
         document.getElementById('message').style.color='red';
         document.getElementById('message').innerHTML="Passwords do not matching.";
     }
    }

</script>
</body>
</html>