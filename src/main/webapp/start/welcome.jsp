<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- inserire CSS -->
<title>Sit&Eat welcome</title>
</head>
<body>
	<h3>Benvenut@ in Sit & Eat, ${username}!</h3>
	<p>PRENOTA ORA
	<p>
		<br>
		     <form action="/test" id="form">
		<div> 
		<label for="città" class="form"> <b> Scegli la città: </b> 
		</label>
		<select class="form">
			<option value="">--Città--</option>
			<option value="Milano">Milano</option>
			<option value="Roma">Roma</option>
			<option value="Torino">Torino</option>
			</select>
			</div>
			<div> 
			<label for="ristorante" class="form"> <b> Scegli il ristorante: </b> 
		</label>
		<select class="form">
			<option value="">--Ristorante--</option>
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
			</div>
			<div>
                    <label class="form"> <b> Scegli il giorno:</b> <input type="date" name="milestone"></label>

                    <label for="orario" class="form"> <b> Scegli un orario:</b></label>
                    <select class="form">
                        <option value="">--Fascia oraria--</option>
                        <option value="9-12">9-12</option>
                        <option value="12-16">12-16</option>
                        <option value="16-18">16-18</option>
                        <option value="18-22">18-22</option>
                    </select>
                </div>
                <div>
                <label> <b> Numero coperti:</b></label><input name="coperti" class="form" required>
                </div>
                
			 <div class="div">
                
            <div>
                <label class="form"> <b> Scegli il tuo menu:</b> </label>
                    <label><input type="radio" name="menu" value="italiana" checked>Menù all'italiana</label>
                    <label><input type="radio" name="menu" value="vegano">Menù vegano</label>
<label><input type="radio" name="menu" value="vegetariano">Menù vegetariano</label>

            </div>
			<a href="tremenu.html"> Rivedi i nostri menù! </a>
			</div>
			<button id="button">Prenota!</button>
			
			
			
			
			
			
			

			
</body>
</html>