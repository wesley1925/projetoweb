<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.*, java.util.*, to.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Comprar Bilhete</title>
<link rel="stylesheet"
	href="http://yui.yahooapis.com/pure/0.6.0/pure-min.css">
<link rel="stylesheet"
	href="http://yui.yahooapis.com/pure/0.6.0/grids-responsive-min.css">
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
<link rel="stylesheet" href="css/layouts/marketing.css">
</head>
<body>
	<div class="header">
		<div class="home-menu pure-menu pure-menu-horizontal pure-menu-fixed">
			<a class="pure-menu-heading" href="index.html">Sistema de
				Aeroporto</a>
			<ul class="pure-menu-list">
				<li class="pure-menu-item"><a href="comprarbilhete.html" class="pure-menu-link">Comprar</a></li>
				<li class="pure-menu-item"><a href="consultarbilhete.html" class="pure-menu-link">Consultar</a></li>
				<li class="pure-menu-item"><a href="transferirbilhete.html" class="pure-menu-link">Transferir</a></li>
				<li class="pure-menu-item"><a href="estornarbilhete.html" class="pure-menu-link">Estornar</a></li>
				<li class="pure-menu-item"><a href="checkinbilhete.html" class="pure-menu-link">Check-in</a></li>
			</ul>
		</div>
	</div>

	<div class="content-wrapper">
		<div class="content">
			<div class="content">
				<h2 class="content-head is-center">Realizar Pagamento</h2>
			</div>
			<div class="pure-g">
				<div class="l-box-lrg pure-u-1">
					<form class="pure-form pure-form-stacked" action="pagamentoCC.jsp"
						method="post">
						<fieldset>
								<%
									Locale local = new Locale("pt","BR");
									DateFormat f = DateFormat.getDateInstance(DateFormat.SHORT, local);
									BilheteTO bilhete = (BilheteTO) request.getAttribute("bilhete");
									
								%>
							<label>Numero do Bilhete</label> <input type="text" name="numeroBilhete" readonly value="<%=bilhete.numeroBilhete%>"> 
							<label>Valor do Bilhete</label> <input type="text" name="valorBilhete" readonly value="<%=bilhete.valorBilhete%>">  
						</fieldset>
						<button type="submit" class="pure-button">Pagamento Cartão de Credito</button>
						
					</form>
					
					<form class="pure-form pure-form-stacked" action="pagamentoCD.jsp"
						method="post">
						<fieldset>
								
							<label>Numero do Bilhete</label> <input type="text" name="numeroBilhete" readonly value="<%=bilhete.numeroBilhete%>"> 
							<label>Valor do Bilhete</label> <input type="text" name="valorBilhete" readonly value="<%=bilhete.valorBilhete%>">
							  
						</fieldset>
						<button type="submit" class="pure-button">Pagamento Cartão de Debito</button>
					</form>
				</div>
			</div>
			<div class="footer l-box is-center">Ricardo Teixeira Gomes RA: 201310208 | Wesley Custodio Rocha RA: 201310585 | André Soares Ramos RA: 201310103</div>
			<div class="footer l-box is-center">  </div>	
		</div>
	</div>

</body>
</html>