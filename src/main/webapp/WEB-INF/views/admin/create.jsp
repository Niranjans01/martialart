<%@include file="../../shared/header.jsp" %>
<div class="panel">
    <h1>Welcome to Control Pannel!</h1>
</div>


<div id="mySidenav" class="sidenav">
    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
    <a href="#" class="dashtab">Dashboard</a>
    <a href="#"class="articletab">Create Article</a>
    <a href="#" class="storytab">Create Story</a>
    <a href="#" class="utilitytab">Utility</a>
    <script src="${SITE_URL}/js/navscript.js"></script>
</div>






<span style="font-size:30px; cursor:pointer" onclick="openNav();">&#9776;</span>
<script src="${SITE_URL}/js/adminpanel.js"></script>

<div class="container">
    <div class="article thumbnail col-md-6 pull-right">
        <form action="${SITE_URL}/admin/article" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <input type="text" placeholder="Article topic" class="form-control" required="" name="topic"/>   
            </div>
            <div class="form-group">
                <textarea class="form-control" placeholder="Article Description..." style="resize: none" rows="10" required="" name="articledesc"></textarea>
            </div>
            <div class="form-group">
                <input type="text" placeholder="#tags" class="form-control" required="" name="tags"/>
            </div>
            <div class="form-group">
                <p>Select Image to upload</p>
                <input type="file" required="" name="files"/>
            </div>
            <div class="form-group">
                <input type="submit" class="btn btn-primary" value="Insert"/>
            </div>
        </form>
    </div>

    <div class="story thumbnail col-md-6 pull-right">
        <form action="${SITE_URL}/admin/story" method="post">
            <div class="form-group">
                <input type="text" placeholder="Topic of Story" required="" class="form-control" name="title"/>   
            </div>
            <div class="form-group">
                <textarea class="form-control" placeholder="Write Story..." required="" style="resize: none" rows="10" name="description"></textarea>
            </div>
            <div class="form-group">
                <input type="text" placeholder="#tags" class="form-control" required="" name="tags"/>
            </div>
            <div class="form-group">
                <input type="submit" class="btn btn-primary" value="Insert"/>
            </div>
        </form>
    </div>


</div>

<%@include file="../../shared/footer.jsp" %>
