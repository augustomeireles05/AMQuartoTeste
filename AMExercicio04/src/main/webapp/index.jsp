<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Exercicio 04</title>

<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">


</head>
<body>

<main>
  <nav class="navbar navbar-dark bg-dark" aria-label="First navbar example">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Never expand</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample01" aria-controls="navbarsExample01" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExample01">
        <ul class="navbar-nav me-auto mb-2">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-bs-toggle="dropdown" aria-expanded="false">Dropdown</a>
            <ul class="dropdown-menu" aria-labelledby="dropdown01">
              <li><a class="dropdown-item" href="#">Action</a></li>
              <li><a class="dropdown-item" href="#">Another action</a></li>
              <li><a class="dropdown-item" href="#">Something else here</a></li>
            </ul>
          </li>
        </ul>
        <form>
          <input class="form-control" type="text" placeholder="Search" aria-label="Search">
        </form>
      </div>
    </div>
  </nav>






	
<%!
	String today(){
		java.text.SimpleDateFormat dt = new java.text.SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
		return dt.format(new java.util.Date());
	}
%>

	<c:set var="variavel" value="Primeira página JSP utilizando JSTL"/> 
	<c:out value="${variavel}"/>
	<c:set var="formatar" value="true"/>
	<c:set var="d1" value="<%=new java.util.Date() %>"/>
	<h1>A data de hoje é: <c:out value="${d1}"></c:out></h1>
	<h1>A data de hoje é: <fmt:formatDate pattern ="yyyy-mm-ss" value = "${d1}"/> </h1>
	<c:if test="${formatar == true }">
		<p>Variável formatar = <c:out value="${formatar}"/></p>
	</c:if>	
	<h1>A data de hoje é: <c:choose>
							<c:when test = "${formatar == true }">
								<c:out value="<%=today() %>"/> <!-- ou gerar um arquivo. tld -->
								</c:when>
								<c:otherwise>
									<:out value="${d1}"/>
								</c:otherwise>
						</c:choose>	</h1>
	
	<button class="btn btn-danger">
		<a href = "https://www.linkedin.com/in/augustomeireles05" "<c:url value = "/jsp/index.htm"/> class="text-decoration-none">LINKEDIN</a>
	</button>
	
	
</body>
</html>