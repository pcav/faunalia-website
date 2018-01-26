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
		$certificazione_qgis = "";
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
			$certificazione_qgis = $_POST["certificazione_qgis"];
			$dati_per_fatturazione = $_POST["dati_per_fatturazione"];
			$note = $_POST["note"];

			// compose submitter mail
			$from = 'From: ' . $sender_email;
			$to = $email;
			$subject = "Iscrizione al corso " . $corso . " avvenuta con successo";
			$message = "La tua iscrizione e' stata registrata. Verrai contattato.\n Grazie.";
			$body = "From: $sender_name\n E-Mail: $sender_email\n Message:\n $message";
			$additional_headers = $from . "\r\n" . 'Content-Type: text/plain; charset=UTF-8';
			if ( !mail ($to, $subject, $body, $additional_headers) ) {
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
							   // "Certificazione: " . $certificazione_qgis  . "\n" .
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
								$certificazione_qgis .";" .
								$dati_per_fatturazione  .";" .
								$note;

				$body = "From: $sender_name\n E-Mail: $sender_email\n Message:\n$header\n$message\n";
				$additional_headers = $from . "\r\n" . 'Content-Type: text/plain; charset=UTF-8';
				if ( !mail ($to, $subject, $body, $additional_headers) ) {
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
				echo '<h2 style="color:red;">Iscrizione al corso ' . $corso . " avvenuta con successo</h2>";
			}
		}
	?>
	<form action="subscr_form_it.html" method="post" class="form-horizontal">
	<div class="form-group">
	<label for="edit-submitted-nome" class="col-sm-3 control-label">Nome <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	<div class="col-sm-9">
	<input type="text" id="edit-submitted-nome" name="nome" value="<?=$nome ?>" size="60" maxlength="128" class="form-control" />
	</div>
	</div>
	<div class="form-group">
	<label for="edit-submitted-cognome" class="col-sm-3 control-label">Cognome <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	<div class="col-sm-9">
	<input type="text" id="edit-submitted-cognome" name="cognome" value="<?=$cognome ?>" size="60" maxlength="128" class="form-control" />
	</div>
	</div>
	<div class="form-group">
	<label for="edit-submitted-indirizzo" class="col-sm-3 control-label">Indirizzo <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	<div class="col-sm-9">
	<input type="text" id="edit-submitted-indirizzo" name="indirizzo" value="<?=$indirizzo ?>" size="60" maxlength="128" class="form-control" />
	</div>
	</div>
	<div class="form-group">
	<label for="edit-submitted-telefono" class="col-sm-3 control-label">Telefono <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	<div class="col-sm-9">
	<input type="text" id="edit-submitted-telefono" name="telefono" value="<?=$telefono ?>" size="60" maxlength="128" class="form-control" />
	</div>
	</div>
	<div class="form-group">
	<label for="edit-submitted-e-mail" class="col-sm-3 control-label">E-Mail <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	<div class="col-sm-9">
	<input class="form-control" type="email" value="<?=$email ?>" id="edit-submitted-e-mail" name="email" size="60" />
	</div>
	</div>
	<div class="form-group">
	<label for="edit-submitted-corso" class="col-sm-3 control-label">Corso <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	<div class="col-sm-9">
	<select id="edit-submitted-corso" name="corso" class="form-control">
		<option value="qgis_cartografia" <?php if ($corso=="qgis_cartografia") echo 'selected="selected"';?> >QGIS cartografia</option>
		<option value="qgis_analisi" <?php if ($corso=="qgis_analisi") echo 'selected="selected"';?> >QGIS analisi</option>
		<option value="qgis3_aggiorn" <?php if ($corso=="qgis3_aggiorn") echo 'selected="selected"';?> >Aggiornamento a QGIS 3</option>
		<option value="postgis" <?php if ($corso=="postgis") echo 'selected="selected"';?> >Geodatabase</option>
		<option value="webgis" <?php if ($corso=="webgis") echo 'selected="selected"';?> >WebMapping</option>
		<option value="pyqgis" <?php if ($corso=="pyqgis") echo 'selected="selected"';?> >Python-QGIS</option>
	</select>
	</div>
	</div>

	<div class="form-group">
	<label for="edit-certificazione_qgis" class="col-sm-3 control-label">Certificazione QGIS.ORG <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	<div class="col-sm-9">
  <p>Faunalia è abilitata al rilascio di certificati ufficiali riconosciuti dalla  <a href="http://changelog.qgis.org/en/qgis/certifyingorganisation/qgis-faunalia/">fondazione internazionale di QGIS</a>.</p>
  <p>La certificazione ha un costo <b>aggiuntivo</b> di 50 €. Questi fondi sono destinati allo sviluppo di QGIS.</p>
  <p>Per maggiori informazioni visiti .....</p>
	<div class="col-sm-6">
  Si <input type="radio" name="certificazione_qgis" value=1/>
  No <input type="radio" name="certificazione_qgis" value=0/>
	</div>
	</div>
  </div>

	<div class="form-group">
	<label for="edit-submitted-dati-per-fatturazione" class="col-sm-3 control-label">Dati per fatturazione <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	<div class="col-sm-9">
	<textarea id="edit-submitted-dati-per-fatturazione" name="dati_per_fatturazione" cols="60" rows="5" class="form-control"><?php echo htmlspecialchars($dati_per_fatturazione); ?></textarea>
	</div>
	</div

	<div class="form-group">
	<label for="edit-submitted-note" class="col-sm-3 control-label text-right">Note</label>
	<div class="col-sm-9">
	<textarea id="edit-submitted-note" name="note" cols="60" rows="5" class="form-control"><?php echo htmlspecialchars($note); ?></textarea><br><br>
 	 </div>
	</div>

	<div class="form-group">
	<div class="col-sm-3"></div>
	<div class="col-sm-9">
	<button type="submit" name="SUBMIT" value="Invia" class="btn btn-success">Invia</button>
	</div>
	</div>

	</form>
