<%@include file="../includes/header.jsp" %>

<h1>${video.titulo}</h1>

<iframe id = "video" width="560" height="315" src="https://www.youtube.com/embed/${video.codigo}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<h2>Reproducciones: ${video.reproducciones }</h2>

 
<%@include file="../includes/footer.jsp" %>