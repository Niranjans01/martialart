<%@include file="../shared/header.jsp" %>
<body>
    <div class="container">

        <div class="wrapper">
            <nav class="tabs">
                <div class="selector"></div>
                <a href="${SITE_URL}/"><i class="fas fa-burn"></i>Martial Arts 01</a>
                <a href="${SITE_URL}/blogs"><i class="fas fa-bomb"></i>Stories</a>
                <a href="#" class="active"><i class="fas fa-bolt"></i>Get In</a>
                <a href="${SITE_URL}/search"><i class="fab fa-superpowers"></i>Search</a>
            </nav>
            <script src="${SITE_URL}/js/navscript.js"></script>
        </div>

        <div class="panel">
            <h1>Login/Register</h1>
        </div>
        <div class="row">
            <div class="loginForm col-md-4" style="visibility: visible">
                <form method="post" action="#">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="" placeholder="Enter email">
                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <input type="password" class="form-control" id="exampleInputPassword1" required="" placeholder="Password">
                    </div>
                    <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-briefcase"></span> Log In</button>

                </form>
                <h1>Or</h1><button onclick="formVisible();" class="btn btn-default"><span class="glyphicon glyphicon-edit"></span> Sign Up</button>

            </div>

            <script>
                function formVisible() {
                    $('.loginForm').hide();
                    $('.registerForm').css('visibility', 'visible');
                }
            </script>

            <!--Register form goes from here-->

            <div class="registerForm col-md-8" style="visibility: hidden">
                <form class="form-horizontal" method="post" action="${SITE_URL}/save/register ">
                    <div class="form-group">
                        <label class="control-label col-xs-3" for="username">Username:</label>
                        <div class="col-xs-9">
                            <input type="text" class="form-control" name="username"  required="" placeholder="First Name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3" for="inputEmail">Email Address:</label>
                        <div class="col-xs-9">
                            <div class="input-group">
                                <input type="text" class="form-control" name="email" placeholder="Enter username" aria-describedby="basic-addon2">
                                <span class="input-group-addon" id="basic-addon2"> <font size="0.5">@example.com</font></span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3"  >Date of Birth:</label>
                        <div class="col-xs-7">
                            <input name="dob" class="form-control" type="date"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3" for="password">Password</label>
                        <div class="col-xs-9">
                            <input  name="password" class="form-control" id="password" type="password" required="" placeholder="password">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3">Gender:</label>
                        <div class="col-xs-2">
                            <label class="radio-inline">
                                <input type="radio" name="gender" value="1"  required=""> Male
                            </label>
                        </div>
                        <div class="col-xs-2">
                            <label class="radio-inline">
                                <input type="radio" name="gender" value="2"  required=""> Female
                            </label>
                        </div>
                    </div>
                    <br>
                    <div class="form-group">
                        <div class="col-xs-offset-3 col-xs-9">
                            <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-edit"></span> Register</button>                                
                        </div>
                        <a style="cursor: pointer;" onclick="formInVisible();" ><p>Already Registered?. Login</p></a>
                        <script>
                            function formInVisible() {
                                $('.loginForm').show();
                                $('.registerForm').css('visibility', 'hidden');
                            }
                        </script>
                    </div>
                </form>
            </div>
        </div>

    </div>

    <%@include file="../shared/footer.jsp" %>
