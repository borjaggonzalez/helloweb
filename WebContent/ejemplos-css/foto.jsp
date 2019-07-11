<%@include file="../includes/header.jsp"%>

<h1>Imagen</h1>



<style>
@keyframes pulse {
  0% { 
	  transform: scale(1);
	  color: #f98585;
  } 
  100% { 
	  transform: scale(1.5);
	  color: #f59707; 
  }
}

.card {
	position: relative;
	width: 480px;
	overflow: hidden;	
}
 
.card .card-content {
	background-color: #0000007a;
	position: absolute;
	height: 80%;
	bottom: -240px;
	left: 0px;
	padding: 0px 10px 0px 10px;
	color:white;
	  transition-duration:1.5s;
	
}
.card:hover .card-content{
	bottom: 0;
	animation-duration: 1s;
}
.card .card-content h2 {
	 padding-top: 10px;
	 font-weight: 600;
	 font-size: 1.5em
}

.card .card-content a {
	color:yellow;
}

.card .card-content a:hover {
	color:#7d7d00;
}  

  .fa-heart{
      float: right;
      color: #f98585;	
      margin-right: 10px;
      margin-top: 10px;
      }
      
      .fa-heart:hover{
        animation: pulse .85s infinite alternate;
        color: red;
      }	

</style>


<div class="card">

	<img alt="bodyboard" src="http://lorempixel.com/640/480/sports/2/">
	<div class="card-content">
	<i class="far fa-heart fa-2x"> <span id="card-likes"></span></i>
		<h2>Bodyboard</h2>
		
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
		<a href="#">Lorem ipsum</a>
		 
		<!--<i class="fas fa-heart fa-2x"></i> --> 
	</div>
</div>



<%@include file="../includes/footer.jsp"%>