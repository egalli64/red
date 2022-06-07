<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/red/css/done.css">
<title>La tua prenotazione</title>
</head>
<body>
    <div class="container">
<div>
        <h1 id="benvenuto">Grazie, ${username}</h1>
</div>
<div>
    
<h2 class="riepilogo">La tua prenotazione è andata a buon fine.</h2>
</div>
<div>
<h3 class="riepilogo">Ti aspettiamo a ${citta} , nella nostra sede di ${ristorante}  il ${giorno} nella fascia oraria ${ora}.</h3>
<h3 class="riepilogo">Hai prenotato per ${coperti} persone, il menu ${menu}.</h3>
</div>

</div>
</body>
</html>
