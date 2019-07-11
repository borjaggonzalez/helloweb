<%@include file="../includes/header.jsp" %>



<h1>2.1. Selectores basicos</h1>

<h3>2.1.1. Selector universal</h3>
<p>Se utiliza para seleccionar todos los elementos de la página. El siguiente ejemplo elimina el margen y el relleno de todos los elementos HTML (por ahora no es importante fijarse en la parte de la declaración de la regla CSS):</p>


<h3>2.1.2. Selector de tipo o etiqueta</h3>
<p>Selecciona todos los elementos de la página cuya etiqueta HTML coincide con el valor del selector. El siguiente ejemplo selecciona todos los párrafos de la página:</p>

<pre><code class="css">
p {
  ...
}
</code></pre>

<h3>2.1.3. Selector descendente</h3>
<p>Selecciona los elementos que se encuentran dentro de otros elementos. Un elemento es descendiente de otro cuando se encuentra entre las etiquetas de apertura y de cierre del otro elemento.</p>

<p>El selector del siguiente ejemplo selecciona todos los elementos <code>span</code> de la página que se encuentren dentro de un elemento <code>p</code>:</p>
<pre><code class="css">
	p span { color: red; }
</code></pre>
<br/><br/><a href="ejemplos-css/index.jsp">Menu principal</a>

<%@include file="../includes/footer.jsp" %>