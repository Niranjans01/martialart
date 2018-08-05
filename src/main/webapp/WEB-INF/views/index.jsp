<%@include file="../shared/header.jsp" %>

<body>
    <div class="container">


        <div class="wrapper">
            <nav class="tabs">
                <div class="selector"></div>
                <a href="#" class="active"><i class="fas fa-burn"></i>Martial Arts 01</a>
                <a href="${SITE_URL}/blogs"><i class="fas fa-bomb"></i>Stories</a>
                <a href="${SITE_URL}/getin"><i class="fas fa-bolt"></i>Get In</a>
                <a href="${SITE_URL}/search"><i class="fab fa-superpowers"></i>Search</a>
            </nav>
            <script src="${SITE_URL}/js/navscript.js"></script>
        </div>

        
        <div class="jumbotron alert-success">
            <a class="alert-danger" href="#"><span class="glyphicon glyphicon-fire"></span> #TopStories</a>
            <h1>Yours! Top Stories</h1>
            <p>Now we are 20K+...</p>
            <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
        </div>


        <div class="row">
            <c:forEach var="a" items="${articles}">
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <img src="../uploads/${a.path}" alt="article 1"/>
                    <div class="caption">
                        <h3>${a.topic}</h3>
                        <p>${a.articledesc}</p>
                        <p><a href="#" class="btn btn-primary" role="button">See more...</a></p>
                    </div>
                </div>
            </div>

            </c:forEach>

            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <img src="${SITE_URL}/image/martialarts.png" alt="ad 1"/>
                    <div class="caption">
                        <h3>Advertisement goes here</h3>

                    </div>
                </div>
            </div>

        </div>

        <div class="row">
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <img src="${SITE_URL}/image/martialarts.png" alt="article 1"/>
                    <div class="caption">
                        <h3>Articles #3</h3>
                        <p>martial arts 01 has recently reached 20,000 + </p>
                        <p><a href="#" class="btn btn-default" role="button">See more...</a></p>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <img src="${SITE_URL}/image/martialarts.png" alt="article 2"/>
                    <div class="caption">
                        <h3>Articles #4</h3>
                        <p>how we reached 20,000 + </p>
                        <p><a href="#" class="btn btn-default" role="button">See more...</a></p>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <img src="${SITE_URL}/image/martialarts.png" alt="article 2"/>
                    <div class="caption">
                        <h3>Articles #4</h3>
                        <p>how we reached 20,000 + </p>
                        <p><a href="#" class="btn btn-default" role="button">See more...</a></p>
                    </div>
                </div>
            </div>
        </div>


    </div>

    <%@include file="../shared/footer.jsp" %>
