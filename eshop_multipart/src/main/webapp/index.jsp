<html>
 <%@include file="/WEB-INF/views/Header.jsp" %>
 <%@include file="/WEB-INF/views/footer.jsp" %>
 
 <head>
 <meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 </head>
<body>
<br>
<br>
<div class="container">
  <h2>welcome</h2>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="images/ss1.jpg" alt="Los Angeles" style="width:100%;">
      </div>

      <div class="item">
        <img src="images/ss2.jpg/" alt="Chicago" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="images/ss3.jpg/" alt="New york" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div><div class="container">
  <h2>welcome to shoe world</h2>
  <p></p><br>
  <div class="row">
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="images/cas.jpg/" target="_blank">
          <img src="images/cas.jpg/"  style="width:100%">
          <div class="caption">
            <p>casual shoe</p>
            <p>Rs:2499
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="images/fann.jpg/" target="_blank">
          <img src="images/fann.jpg/" alt="Fjords"  style="width:100%">
          <div class="caption">
            <p>fancyware shoe</p>
            <p>Rs:1199
          </div>
        </a>
      </div>
    </div>
     <div class="col-md-4">
      <div class="thumbnail">
        <a href="images/form2.jpg/" target="_blank">
          <img src="images/form2.jpg/" alt="Fjords" style="width:100%">
          <div class="caption">
            <p>formal shoe</p>
            <p>Rs:1476
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="images/party.jpg/" target="_blank">
          <img src="images/party.jpg/" alt="Nature" style="width:100%">
          <div class="caption">
            <p>partyware shoe</p>
            <p>Rs:1600
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="images/sporttt.jpg/" target="_blank">
          <img src="images/sporttt.jpg/" alt="Fjords" style="width:100%">
          <div class="caption">
            <p>sport shoe</p>
            <p>Rs:1476
          </div>
        </a>
      </div>
    </div>
     <div class="col-md-4">
      <div class="thumbnail">
        <a href="images/wed.jpg/" target="_blank">
          <img src="images/wed.jpg/" alt="Fjords"  style="width:100%">
          <div class="caption">
            <p>wedding shoe</p>
            <p>Rs:1358
          </div>
        </a>
      </div>
    </div>
  </div>
</div>
</div>


<br>
<br>
<br>

</body>
</html>
