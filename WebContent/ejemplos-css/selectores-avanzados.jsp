
<%@include file="../includes/header.jsp" %>

<h1>2.2. Selectores Avanzados</h1>

<h3>2.2.1. Selector de hijos</h3>
<p>Se trata de un selector similar al selector descendente, pero muy diferente en su funcionamiento. Se utiliza para seleccionar un elemento que es hijo directo de otro elemento y se indica mediante el "signo de mayor que":</p>
<pre><code class="css">
p > span { color: blue; }
</code></pre>
<p><span>Texto1</span></p>
<p><a href="#"><span>Texto2</span></a></p>

<h3>2.2.2. Selector adyacente</h3>
<p>El selector adyacente se emplea para seleccionar elementos que en el código HTML de la página se encuentran justo a continuación de otros elementos. Su sintaxis emplea el signo + para separar los dos elementos:</p>
<pre><code class="css">
elemento1 + elemento2 { ... }
</code></pre>

<h3>2.2.3. Selector de atributos</h3>
<p>El último tipo de selectores avanzados lo forman los selectores de atributos, que permiten seleccionar elementos HTML en función de sus atributos y/o valores de esos atributos.</p>

<p>Los cuatro tipos de selectores de atributos son:</p>

<p><code>[nombre_atributo]</code>, selecciona los elementos que tienen establecido el atributo llamado nombre_atributo, independientemente de su valor.</p>
<p><code>[nombre_atributo=valor]</code>, selecciona los elementos que tienen establecido un atributo llamado nombre_atributo con un valor igual a valor.</p>
<p><code>[nombre_atributo~=valor]</code>, selecciona los elementos que tienen establecido un atributo llamado nombre_atributo y al menos uno de los valores del atributo es valor.</p>
<p><code>[nombre_atributo|=valor]</code>, selecciona los elementos que tienen establecido un atributo llamado nombre_atributo y cuyo valor es una serie de palabras separadas con guiones, pero que comienza con valor. Este tipo de selector sólo es útil para los atributos de tipo lang que indican el idioma del contenido del elemento.</p>

<a href="ejemplos-css/index.jsp">Menu principal</a>

<%@include file="../includes/footer.jsp" %>	