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
<div id="bottone">
<a href="/red/index.html"><button class="btn"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house-door-fill" viewBox="0 0 16 16">
  <path d="M6.5 14.5v-3.505c0-.245.25-.495.5-.495h2c.25 0 .5.25.5.5v3.5a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5z"/>
</svg>
Torna alla Home!</button></a>
</div>
</div>


</div>
</body>
</html>
