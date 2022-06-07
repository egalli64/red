<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/red/css/prenota.css">
<title>Sit&amp;Eat welcome</title>
</head>
<body>

	<div class="container">
	<h3 id="benvenuto">Benvenuto/a in Sit &amp; Eat, ${username}!</h3>
	<div>
	<figure>
		<img src="/red/immagine/SIT.jpg" alt="SIT" width="30%">
		</figure></div>
	<p id="prenotaora">COMPILA IL FORM<p>
		<br>
		<form action="/red/reservation/new" id="form">
		<div> 
		<label for="città" class="form"> <b>Scegli la città:</b> </label>
			

			<select class="form-control form-control-lg" placeholder="Città" name= "citta" required>
				<option> Città </option>
				<option value="Milano">Milano</option>
				<option value="Roma">Roma</option>
				<option value="Torino">Torino</option>
			
			</select>
			</div>
		

			<div> 
			<label for="ristorante" class="form"> <b> Scegli il ristorante: </b> 
		</label>
		
		<select class="form-control form-control-lg" placeholder=" Ristorante" name= "ristorante" required>
		<option> Ristorante </option>
			<option value="Milano">MILANO - Piazza Duomo </option>
			<option value="Milano">MILANO - Porta Venezia </option>
			<option value="Milano">MILANO - Corso Como </option>
			<option value="Roma">ROMA - Piazza di Spagna</option>
			<option value="Roma">ROMA - Piazza del Popolo </option>
			<option value="Roma">ROMA - Via del Corso</option>
			<option value="Torino">TORINO - Piazza Castello</option>
			<option value="Torino">TORINO - Via Nizza</option>
			<option value="Torino">TORINO - Lingotto</option>
			</select>
			<span> <a href="/red/sedi.html" class="rivedi"> Dove siamo </a> </span>
				</div>
	
			<div>
                    <label class="form"> <b> Scegli il giorno:</b> <input type="date" name="giorno" required></label>

                    <label form="orario" class="form"> <b> Scegli un orario:</b></label>
					<select class="form-control form-control-lg" name= "ora" >
                        <option value=""> Orario </option>
                        <option value="11-13">11-13</option>
                        <option value="13-16">13-16</option>
                        <option value="16-18">16-18</option>
                        <option value="18-22">18-22</option>
                    </select>
                </div>

                <div>
					<label for="coperti" class="form"> <b> Numero coperti:</b> </label> 
					<input id ="coperti" type="number" name="coperti" value="0" class="form-control" required>
                </div>
                
                
            <div>
                <label class="form"> <b> Scegli il tuo menù:</b> </label>
			     <label><input type="radio" name="menu" value="italiano" checked>Menù italiano</label>
                    <label><input type="radio" name="menu" value="vegano">Menù vegano</label>
					<label><input type="radio" name="menu" value="vegetariano">Menù vegetariano</label>
						<a href="/red/TreMenu.html" class="rivedi"> Rivedi i nostri menù! </a>
            </div>
			
		
	
			<br>
			<button id="btn">Prenota!</button>
			<a href="/red/start/logout"> logout </a>


		</div> <!--chiusura container grande-->

	
</body>
</html>