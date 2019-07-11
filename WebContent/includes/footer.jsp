<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

<%
Date fecha = new Date();
SimpleDateFormat df = new SimpleDateFormat("yyyy");
String año=df.format(fecha);

String ruta = request.getRequestURI();



%>
	


</main>
<footer class="clearfix">
<a href="#top"  onclick="goTop(event)" class="boton"><i class="fas fa-arrow-circle-up fa-3x"></i></a>
<div class="content">
<div class="copy">&copy Ipartek <%=año%></div>
<div class="social" ><i class="fab fa-twitter-square fa-2x"></i> <i class="fab fa-facebook-square fa-2x"></i></div>
</div> 

</footer>

<script type="text/javascript" src="js/main.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/9.15.8/highlight.min.js"></script>
<script>hljs.initHighlightingOnLoad();</script>
</body>
</html>