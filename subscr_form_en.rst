Training Courses subscriptions form
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
			$subject = "Successfully subscribed to " . $corso . " course";
			$message = "Your subscription has been recordered. You will be contacted.\n Thank you.";
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
				echo '<h2>Something went wrong. Try again or contact webmaster!</h2>';
			} else {
				echo "<h2>Successfully subscribed to " . $corso . " course</h2>";
			}
		}
	?>
	<form action="subscr_form_en.html" method="post" class="form-horizontal">
	<div class="form-group">
	<label for="edit-submitted-nome" class="col-sm-3 control-label">First Name <span class="form-required" title="This field is mandatory.">*</span></label>
	<div class="col-sm-9">
	<input type="text" id="edit-submitted-nome" name="nome" value="<?=$nome ?>" size="60" maxlength="128" class="form-control" />
	</div>
	</div>
	<div class="form-group">
	<label for="edit-submitted-cognome" class="col-sm-3 control-label">Last Name <span class="form-required" title="This field is mandatory.">*</span></label>
	<div class="col-sm-9">
	<input type="text" id="edit-submitted-cognome" name="cognome" value="<?=$cognome ?>" size="60" maxlength="128" class="form-control" />
	</div>
	</div>
	<div class="form-group">
	<label for="edit-submitted-indirizzo" class="col-sm-3 control-label">Address <span class="form-required" title="This field is mandatory.">*</span></label>
	<div class="col-sm-9">
	<input type="text" id="edit-submitted-indirizzo" name="indirizzo" value="<?=$indirizzo ?>" size="60" maxlength="128" class="form-control" />
	</div>
	</div>
	<div class="form-group">
	<label for="edit-submitted-telefono" class="col-sm-3 control-label">Phone <span class="form-required" title="This field is mandatory.">*</span></label>
	<div class="col-sm-9">
	<input type="text" id="edit-submitted-telefono" name="telefono" value="<?=$telefono ?>" size="60" maxlength="128" class="form-control" />
	</div>
	</div>
	<div class="form-group">
	<label for="edit-submitted-e-mail" class="col-sm-3 control-label">E-Mail <span class="form-required" title="This field is mandatory.">*</span></label>
	<div class="col-sm-9">
	<input class="form-control" type="email" value="<?=$email ?>" id="edit-submitted-e-mail" name="email" size="60" />
	</div>
	</div>
	<div class="form-group">
	<label for="edit-submitted-corso" class="col-sm-3 control-label">Training Course <span class="form-required" title="This field is mandatory.">*</span></label>
	<div class="col-sm-9">
	<select id="edit-submitted-corso" name="corso" class="form-control">
		<option value="qgis_cartografia" <?php if ($corso=="qgis_cartografia") echo 'selected="selected"';?> >QGIS cartografia (IT)</option>
		<option value="qgis_analisi" <?php if ($corso=="qgis_analisi") echo 'selected="selected"';?> >QGIS analisi (IT)</option>
		<option value="pyqgis" <?php if ($corso=="pyqgis") echo 'selected="selected"';?> >Python-QGIS (IT)</option>
		<option value="postgis" <?php if ($corso=="postgis") echo 'selected="selected"';?> >Geodatabase (IT)</option>
		<option value="webgis" <?php if ($corso=="webgis") echo 'selected="selected"';?> >WebMapping (IT)</option>
		<option value="WebMapping com QGIS" <?php if ($corso=="webgis") echo 'selected="selected"';?> >WebMapping com QGIS (PT)</option>
	</select>
	</div>
	</div>
	
	<div class="form-group">
	<label for="edit-submitted-dati-per-fatturazione" class="col-sm-3 control-label">Data for invoice <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	<div class="col-sm-9">
	<textarea id="edit-submitted-dati-per-fatturazione" name="dati_per_fatturazione" cols="60" rows="5" class="form-control"><?php echo htmlspecialchars($dati_per_fatturazione); ?></textarea>
	</div>
	</div
 
	<div class="form-group">
	<label for="edit-submitted-note" class="col-sm-3 control-label text-right">Notes</label>
	<div class="col-sm-9">
	<textarea id="edit-submitted-note" name="note" cols="60" rows="5" class="form-control"><?php echo htmlspecialchars($note); ?></textarea><br><br>
 	 </div>
	</div>
	
	<div class="form-group">
	<div class="col-sm-3"></div>
	<div class="col-sm-9">
	<button type="submit" name="SUBMIT" value="Send" class="btn btn-success">Send</button>
	</div>
	</div>

	</form>
