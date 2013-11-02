Modulo di iscrizione
-------------------------------------------------------------------------------

.. raw:: html

         <?php
		// set default form values
		$nome = "";
		$cognome = "";
		$indirizzo = "";
		$telefono = "";
		$email = "";
		$corso = "";
		$dati_per_fatturazione = "";
		$note = "";

		if ($_POST["SUBMIT"]) {
			
			$found_error = 0;
			
			// sender data
			$sender_name = 'Faunalia';
			$sender_email ="info@faunalia.it";
			
			$sender_name = 'Iscrizione corsi';
			$sender_email ="info@faunalia.it";
			// form data
			$nome = $_POST["nome"];
			$cognome = $_POST["cognome"];
			$indirizzo = $_POST["indirizzo"];
			$telefono = $_POST["telefono"];
			$email = $_POST["email"];
			$corso = $_POST["corso"];
			$dati_per_fatturazione = $_POST["dati_per_fatturazione"];
			$note = $_POST["note"];
			
			// compose submitter mail
			$from = 'From: ' . $sender_email; 
			$to = $email; 
			$subject = "Iscrizione al corso " . $corso . " avvenuta con successo";
			$message = "La tua iscrizione e' stata registrata. Verrai contattato.\n Grazie.";
			$body = "From: $sender_name\n E-Mail: $sender_email\n Message:\n $message";
			if ( !mail ($to, $subject, $body, $from) ) { 
				error_log("Error sending inscription receipt email: " . $body); 
				$found_error = 1;
				
			} else {
			
				// compose internal archive mail 
				$from = 'From: ' . $sender_email; 
				$to = $sender_email; 
				$subject = "Iscrizione corso: " . $corso . " per " . $nome . " " . $cognome;
					
					// key:value message
					// $message = "Timestamp: " . date("c") . "\n" .
							   // "Nome: " . $nome . "\n" .
							   // "Cognome: " . $cognome . "\n" .
							   // "Indirizzo: " . $indirizzo  . "\n" .
							   // "Telefono: " . $telefono  . "\n" .
							   // "Email: " . $email  . "\n" .
							   // "Corso: " . $corso  . "\n" .
							   // "Dati per Fatturazione: " . $dati_per_fatturazione  . "\n" .
							   // "Note: " . $note  . "\n";	
							   			
					// with header csv message
					$header = "Timestamp;Nome;Cognome;Indirizzo;Telefono;Email;Corso;Dati per Fatturazione;Note";
					$message =  date("c") .";" .
								$nome  .";" .
								$cognome  .";" .
								$indirizzo .";" .
								$telefono .";" .
								$email .";" .
								$corso .";" .
								$dati_per_fatturazione  .";" .
								$note;
					
				$body = "From: $sender_name\n E-Mail: $sender_email\n Message:\n$header\n$message\n";
				if ( !mail ($to, $subject, $body, $from) ) {
					error_log("Error sending internal inscription mail: ". $body);
					$found_error = 1;
				}
				
				// write message on a local file
				$report_filename = '/var/lib/form_results/training.log';
				if ( !file_exists($report_filename) ) {
					if ( !file_put_contents ( $report_filename , $header.PHP_EOL, FILE_APPEND | LOCK_EX) ) {
						error_log("Error writing inscription log file for this header: ". $header); 
						$found_error = 1;
					}
				}			
				if ( !file_put_contents ( $report_filename , $message.PHP_EOL, FILE_APPEND | LOCK_EX) ) {
					error_log("Error writing inscription log file for this message: ". $message); 
					$found_error = 1;
				}
			}
			
			if ( $found_error ) {
				echo '<h2>Qualcosa non ha funzionato. Riprova o contatta il webmaster!</h2>';
			} else {
				echo "<h2>Iscrizione al corso " . $corso . " avvenuta con successo</h2>";
			}
		}
	?>
<form class="form-horizontal">
<fieldset>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="edit-submitted-nome">Nome  <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
  <div class="controls">
    <input id="edit-submitted-nome" name="nome" value="<?=$nome ?>" type="text" placeholder="" class="input-xlarge" required=""> 
  </div>
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="edit-submitted-cognome">Cognome  <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
  <div class="controls">
    <input id="edit-submitted-cognome" name="cognome" value="<?=$cognome ?>" type="text" placeholder="" class="input-xlarge" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="edit-submitted-indirizzo">Indirizzo  <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
  <div class="controls">
    <input id="edit-submitted-indirizzo" name="indirizzo" value="<?=$indirizzo ?>" type="text" placeholder="" class="input-xlarge" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="edit-submitted-telefono">Telefono  <span class="form-required" title="Questo campo è obbligatorio.">*</span> </label>
  <div class="controls">
    <input id="edit-submitted-telefono" name="telefono" value="<?=$telefono ?>" type="text" placeholder="" class="input-xlarge" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="edit-submitted-e-mail">E-Mail  <span class="form-required" title="Questo campo è obbligatorio.">*</span> </label>
  <div class="controls">
    <input id="edit-submitted-e-mail" name="email" value="<?=$email ?>" type="text" placeholder="" class="input-xlarge" required="">
    
  </div>
</div>

<!-- Select Basic -->
<div class="control-group">
  <label class="control-label" for="edit-submitted-corso">Corso  <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
  <div class="controls">
    <select id="edit-submitted-corso" name="corso" class="input-xlarge">
		<option value="" <?php if ($corso=="") echo 'selected="selected"';?> >- Scegliere -</option>
		<option value="qgis_cartografia" <?php if ($corso=="qgis_cartografia") echo 'selected="selected"';?> >QGIS cartografia</option>
		<option value="qgis_analisi" <?php if ($corso=="qgis_analisi") echo 'selected="selected"';?> >QGIS analisi</option>
		<option value="pyqgis" <?php if ($corso=="pyqgis") echo 'selected="selected"';?> >Python-QGIS</option>
		<option value="postgis" <?php if ($corso=="postgis") echo 'selected="selected"';?> >Geodatabase</option>
		<option value="webgis" <?php if ($corso=="webgis") echo 'selected="selected"';?> >WebMapping</option>
    </select>
  </div>
</div>

<!-- Textarea -->
<div class="control-group">
  <label class="control-label" for="edit-submitted-dati-per-fatturazione">Dati per fatturazione  <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
  <div class="controls">                     
    <textarea id="edit-submitted-dati-per-fatturazione" name="textarea"><?php echo htmlspecialchars($dati_per_fatturazione); ?></textarea>
  </div>
</div>

<!-- Textarea -->
<div class="control-group">
  <label class="control-label" for="edit-submitted-note">Note</label>
  <div class="controls">                     
    <textarea id="edit-submitted-note" name="note"><?php echo htmlspecialchars($note); ?></textarea>
  </div>
</div>

<!-- Button -->
<div class="control-group">
  <label class="control-label" for="singlebutton"></label>
  <div class="controls">
    <input type="submit" id="SUBMIT" name="submit" class="btn btn-success">Invia</button>
  </div>
</div>

</fieldset>
</form>
