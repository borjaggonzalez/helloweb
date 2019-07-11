<%@include file="../includes/header-bootstrap.jsp" %>

<h1>Grid 12 columnas</h1>


<div class="row">
	<div class="  col-12  col-md-3 p-2 text-center bg-danger">
	<span class="d-block d-md-none">12</span>	
	<span class="d-none d-md-block">3</span>
	</div>
	
	<div class="col-12  col-md-8 p-2 text-center bg-warning"><span class="d-block d-md-none">12</span>	
	<span class="d-none d-md-block">8</span></div>
<div class="col-12 p-2  col-md-1 text-center bg-info"><span class="d-block d-md-none">12</span>	
	<span class="d-none d-md-block">1	</span></div>
</div> 

<div class="row">
<%for(int i=0; i<12 ; i++){%>
	<div class="col-1 p-2 text-center border">1</div>
	<%} %>
</div> 


<div class="row">
	<div class="  col-4 p-2 text-center bg-warning">4</div>
	<div class="  col-4 p-2 text-center bg-info">4</div>
<div class=" col-2 p-2 text-center offset-2 bg-danger">2 offset</div>
</div> 
 



<%@include file="../includes/footer-bootstrap.jsp" %>