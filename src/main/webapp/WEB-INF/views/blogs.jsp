<%@include file="../shared/header.jsp" %>
<body>
    <div class="container">

        <div class="wrapper">
            <nav class="tabs">
                <div class="selector"></div>
                <a href="${SITE_URL}/"><i class="fas fa-burn"></i>Martial Arts 01</a>
                <a href="#" class="active"><i class="fas fa-bomb"></i>Stories</a>
                <a href="${SITE_URL}/getin"><i class="fas fa-bolt"></i>Get In</a>
                <a href="${SITE_URL}/search"><i class="fab fa-superpowers"></i>Search</a>
            </nav>
            <script src="${SITE_URL}/js/navscript.js"></script>

        </div>


        <div class="jumbotron">
            <h1>Hi! Namastey...</h1>
            <p>You have got some stories ?? Email us here <span class="btn btn-primary btn-lg glyphicon glyphicon-envelope"></span></p>
        </div>


        <c:forEach var="s" items="${stories}">
            <div class="thumbnail">
                <div class="row">

                    <div class="col-sm-16 col-md-9 pull-left">
                        <div class="caption" style="text-transform: uppercase;">
                            "<b>${s.title}</b>"
                        </div>

                        <p style="overflow: hidden; text-overflow: ellipsis;max-height: 50px;" class="descr">${s.description}</p>
                        <a href="" class="btn btn-link">See more -></a>
                    </div>

                    <!--Reacts are included here-->
                    <div class="reacts col-md-3 pull-right">
                        <span class="glyphicon glyphicon-heart"></span>
                        <span class="glyphicon glyphicon-share"></span>
                        <span class="glyphicon glyphicon-comment"></span>
                    </div>
                </div>
            </div>
        </c:forEach>



    </div>

    <%@include file="../shared/footer.jsp" %>
