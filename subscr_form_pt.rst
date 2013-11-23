Formulário de inscrição
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
			$sender_name = 'Faunalia LDA';
			$sender_email ="info@faunalia.pt";
			
			$sender_name = 'Inscrição formação SIG';
			$sender_email ="info@faunalia.pt";
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
			$subject = "Faunalia LDA, inscrição no curso " . $corso . " efectuada com sucesso";
			$message = "A sua inscrição foi registrada. Será contactado o mais brevemente possível.\n\nObrigado.";
			$body = "From: $sender_name\nRemetente: $sender_email\nMensagem:\n$message";
			if ( !mail ($to, $subject, $body, $from) ) { 
				error_log("Error sending inscription receipt email: " . $body); 
				$found_error = 1;
				
			} else {
			
				// compose internal archive mail 
				$from = 'From: ' . $sender_email; 
				$to = $sender_email; 
				$subject = "Inscrição no curso: " . $corso . " de " . $nome . " " . $cognome;
					
					// key:value message
					$message_formatted = "Timestamp: " . date("c") . "\n" .
							     "Nome: " . $nome . "\n" .
							     "Apelido: " . $cognome . "\n" .
							     "Endereço: " . $indirizzo  . "\n" .
							     "Telefone: " . $telefono  . "\n" .
							     "Email: " . $email  . "\n" .
							     "Curso: " . $corso  . "\n" .
							     "Dados para facturação: " . $dati_per_fatturazione  . "\n" .
							     "Notas: " . $note  . "\n";	
							   			
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
					
				$body = "De: $sender_name\nRemetente: $sender_email\nDetalhes:\n$message_formatted\n\nDetalhes para LibreOffice:\n$header\n$message\n";
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
				echo '<h2>Erro, contactar os responsáveis do site</h2>';
			} else {
				echo "<h2>Inscrição no curso " . $corso . " efectuada com sucesso</h2>";
			}
		}
	?>
	<form action="subscr_form_pt.html" method="post" class="form-horizontal">
	<div class="form-group">
	<label for="edit-submitted-nome" class="col-sm-3 control-label">Nome <span class="form-required" title="O campo é obrigatório.">*</span></label>
	<div class="col-sm-9">
	<input type="text" id="edit-submitted-nome" name="nome" value="<?=$nome ?>" size="60" maxlength="128" class="form-control" />
	</div>
	</div>
	<div class="form-group">
	<label for="edit-submitted-cognome" class="col-sm-3 control-label">Apelido <span class="form-required" title="O campo é obrigatório.">*</span></label>
	<div class="col-sm-9">
	<input type="text" id="edit-submitted-cognome" name="cognome" value="<?=$cognome ?>" size="60" maxlength="128" class="form-control" />
	</div>
	</div>
	<div class="form-group">
	<label for="edit-submitted-indirizzo" class="col-sm-3 control-label">Endereço <span class="form-required" title="O campo é obrigatório.">*</span></label>
	<div class="col-sm-9">
	<input type="text" id="edit-submitted-indirizzo" name="indirizzo" value="<?=$indirizzo ?>" size="60" maxlength="128" class="form-control" />
	</div>
	</div>
	<div class="form-group">
	<label for="edit-submitted-telefono" class="col-sm-3 control-label">Telemóvel <span class="form-required" title="O campo é obrigatório.">*</span></label>
	<div class="col-sm-9">
	<input type="text" id="edit-submitted-telefono" name="telefono" value="<?=$telefono ?>" size="60" maxlength="128" class="form-control" />
	</div>
	</div>
	<div class="form-group">
	<label for="edit-submitted-e-mail" class="col-sm-3 control-label">E-Mail <span class="form-required" title="O campo é obrigatório.">*</span></label>
	<div class="col-sm-9">
	<input class="form-control" type="email" value="<?=$email ?>" id="edit-submitted-e-mail" name="email" size="60" />
	</div>
	</div>
	<div class="form-group">
	<label for="edit-submitted-corso" class="col-sm-3 control-label">Curso <span class="form-required" title="O campo é obrigatório.">*</span></label>
	<div class="col-sm-9">
	<select id="edit-submitted-corso" name="corso" class="form-control">
		<option value="WebMapping com QGIS, 2-3 Dezembro 2013" <?php if ($corso=="webgis") echo 'selected="selected"';?> >WebMapping com QGIS, 2-3 Dezembro 2013</option>
		<option value="BD geográficas: PostgreSQL e PostGIS, 3-5 Fevereiro 2014" <?php if ($corso=="webgis") echo 'selected="selected"';?> >BD geográficas: PostgreSQL e PostGIS, 3-5 Fevereiro 2014</option>
		<option value="Cartografia com QGIS, 10-12 Março 2014" <?php if ($corso=="webgis") echo 'selected="selected"';?> >Cartografia com QGIS, 10-12 Março 2014</option>
		<option value="Análise SIG com QGIS, 26-28 Março 2014" <?php if ($corso=="webgis") echo 'selected="selected"';?> >Análise SIG com QGIS, 26-28 Março 2014</option>
		<option value="Criar plugins em Python para QGIS, 28-30 Abril 2014" <?php if ($corso=="webgis") echo 'selected="selected"';?> >Criar plugins em Python para QGIS, 28-30 Abril 2014</option>
		<option value="BD geográficas: PostgreSQL e PostGIS, 14-16 Maio 2014" <?php if ($corso=="webgis") echo 'selected="selected"';?> >BD geográficas: PostgreSQL e PostGIS, 14-16 Maio 2014</option>
	</select>
	</div>
	</div>
	
	<div class="form-group">
	<label for="edit-submitted-dati-per-fatturazione" class="col-sm-3 control-label">Dados para emissão de factura-recibo <span class="form-required" title="O campo é obrigatório.">*</span></label>
	<div class="col-sm-9">
	<textarea id="edit-submitted-dati-per-fatturazione" name="dati_per_fatturazione" cols="60" rows="5" class="form-control"><?php echo htmlspecialchars($dati_per_fatturazione); ?></textarea>
	</div>
	</div
 
	<div class="form-group">
	<label for="edit-submitted-note" class="col-sm-3 control-label text-right">Observações</label>
	<div class="col-sm-9">
	<textarea id="edit-submitted-note" name="note" cols="60" rows="5" class="form-control"><?php echo htmlspecialchars($note); ?></textarea><br><br>
 	 </div>
	</div>
	
	<div class="form-group">
	<div class="col-sm-3"></div>
	<div class="col-sm-9">
	<button type="submit" name="SUBMIT" value="Enviar" class="btn btn-success">Enviar</button>
	</div>
	</div>

	</form>
