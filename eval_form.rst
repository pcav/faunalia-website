Questionario di valutazione corsi
-------------------------------------------------------------------------------

Minimo 0, Massimo 5

.. raw:: html

	<?php
		// set default form values
		$aspettative = "";
		$durata = "";
		$infrastrutture = "";
		$qualita = "";
		$logistica = "";
		$docenza = "";
		$competenze = "";
		$obiettivi = "";
		$stimola = "";
		$esposizione = "";
		$disponibilita = "";
		$osservazioni = "";
		$amici = "";
		$internet = "";
		$mail_list = "";
		$email = "";
		$altro = "";
		$sito = "";
		$quale = "";
		$nome_corso = "";
		
		$pageName = basename($_SERVER['SCRIPT_NAME']);
		if ($_POST["SUBMIT"]) {
			
			$found_error = 0;
			
			// sender data
			$sender_name = 'Faunalia';
			$sender_email ="info@faunalia.it";
			
			// form data
			$aspettative = $_POST["aspettative"];
			$durata = $_POST["durata"];
			$infrastrutture = $_POST["infrastrutture"];
			$qualita = $_POST["qualita"];
			$logistica = $_POST["logistica"];
			$docenza = $_POST["docenza"];
			$competenze = $_POST["competenze"];
			$obiettivi = $_POST["obiettivi"];
			$stimola = $_POST["stimola"];
			$esposizione = $_POST["esposizione"];
			$disponibilita = $_POST["disponibilita"];
			$osservazioni = $_POST["osservazioni"];
			$amici = $_POST["know_amici"];
			$internet = $_POST["know_internet"];
			$mail_list = $_POST["know_mail_list"];
			$email = $_POST["know_email"];
			$altro = $_POST["know_altro"];
			$sito = $_POST["know_sito"];
			$quale = $_POST["quale_sito"];
			$nome_corso = $_POST["nome_corso"];
			
			// compose internal archive mail 
			$from = 'From: ' . $sender_email; 
			$to = $sender_email; 
			$subject = "Valutazione corso: " . $nome_corso;
				
				// key:value message
				//$message = "Nome: " . $nome . "\n" .
				//		   "Cognome: " . $cognome . "\n" .
				//		   "Indirizzo: " . $indirizzo  . "\n" .
				//		   "Telefono: " . $telefono  . "\n" .
				//		   "Email: " . $e_mail  . "\n" .
				//		   "Corso: " . $corso  . "\n" .
				//		   "Dati per Fatturazione: " . $dati_per_fatturazione  . "\n" .
				//		   "Note: " . $note  . "\n";
				
				// with header csv message
				$header =   "timestamp" . ";" .
							"aspettative" . ";" .
							"durata" . ";" .
							"infrastrutture" . ";" .
							"qualita" . ";" .
							"logistica" . ";" .
							"docenza" . ";" .
							"competenze" . ";" .
							"obiettivi" . ";" .
							"stimola" . ";" .
							"esposizione" . ";" .
							"disponibilita" . ";" .
							"osservazioni" . ";" .
							"amici" . ";" .
							"internet" . ";" .
							"mail_list" . ";" .
							"email" . ";" .
							"altro" . ";" .
							"sito" . ";" .
							"quale" . ";" .
							"nome_corso";
							
				$message =  date("c")  .";" .
							$aspettative  .";" .
							$durata  .";" .
							$infrastrutture  .";" .
							$qualita  .";" .
							$logistica  .";" .
							$docenza  .";" .
							$competenze  .";" .
							$obiettivi  .";" .
							$stimola  .";" .
							$esposizione  .";" .
							$disponibilita  .";" .
							$osservazioni  .";" .
							$amici  .";" .
							$internet  .";" .
							$mail_list  .";" .
							$email  .";" .
							$altro  .";" .
							$sito  .";" .
							$quale  .";" .
							$nome_corso;
				
			$body = "From: $sender_name\n E-Mail: $sender_email\n Message:\n$header\n$message";
			if ( !mail ($to, $subject, $body, $from) ) { 
				error_log("Error sending internal evaluation mail: ". $body);
				$found_error = 1;
			}
			
			// write message on a local file
			$report_filename = '/var/lib/form_results/eval_form.log';
			if ( !file_exists($report_filename) ) {
				if ( !file_put_contents ( $report_filename , $header.PHP_EOL, FILE_APPEND | LOCK_EX) ) {
					error_log("Error writing eval_form log file for this header: ". $header); 
					$found_error = 1;
				}
			}			
			if ( !file_put_contents ( $report_filename , $message.PHP_EOL, FILE_APPEND | LOCK_EX) ) {
				error_log("Error writing eval_form log file for this message: ". $message); 
				$found_error = 1;
			}
			
			if ( $found_error ) {
				echo '<h2>Qualcosa non ha funzionato. Riprova o contatta il webmaster!</h2>';
			} else {
				echo "<h2>Valutazione del corso " . $nome_corso . " inviata con successo</h2>";
			}
		}
	?>
	<form class="form-horizontal" action="<?php echo $pageName; ?>" method="post" role="form">
	
	<div class="form-group">
	<label for="edit-submitted-question-1" class="col-sm-3 control-label">Il corso ha corrisposto alle tue aspettative? <span  title="Questo campo è obbligatorio.">*</span></label>
	<div class="col-sm-9">
	<select id="edit-submitted-question-1" name="aspettative" class="form-control">
		<option value=""  <?php if ($aspettative=="") echo 'selected="selected"';?> >- Scegliere - </option>	
		<option value="0" <?php if ($aspettative=="0") echo 'selected="selected"';?> >0</option>
		<option value="1" <?php if ($aspettative=="1") echo 'selected="selected"';?> >1</option>
		<option value="2" <?php if ($aspettative=="2") echo 'selected="selected"';?> >2</option>
		<option value="3" <?php if ($aspettative=="3") echo 'selected="selected"';?> >3</option>
		<option value="4" <?php if ($aspettative=="4") echo 'selected="selected"';?> >4</option>
		<option value="5" <?php if ($aspettative=="5") echo 'selected="selected"';?> >5</option>
	</select>
	</div>
	</div>

	<div class="form-group">
	<label for="edit-submitted-question-2" class="col-sm-3 control-label">La durata del corso è stata sufficiente? <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	<div class="col-sm-9">
	<select id="edit-submitted-question-2" name="durata" class="form-control">
		<option value=""  <?php if ($durata=="") echo 'selected="selected"';?> >- Scegliere -</option>
		<option value="0" <?php if ($durata=="0") echo 'selected="selected"';?> >0</option>
		<option value="1" <?php if ($durata=="1") echo 'selected="selected"';?> >1</option>
		<option value="2" <?php if ($durata=="2") echo 'selected="selected"';?> >2</option>
		<option value="3" <?php if ($durata=="3") echo 'selected="selected"';?> >3</option>
		<option value="4" <?php if ($durata=="4") echo 'selected="selected"';?> >4</option>
		<option value="5" <?php if ($durata=="5") echo 'selected="selected"';?> >5</option>
	</select>
	</div>
	</div>

	<div class="form-group">
	<label for="edit-submitted-question-3" class="col-sm-3 control-label">Come valuti le infrastrutture utilizzate? <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	<div class="col-sm-9">
	<select id="edit-submitted-question-3" name="infrastrutture" class="form-control">
		<option value=""  <?php if ($infrastrutture=="") echo 'selected="selected"';?> >- Scegliere -</option>
		<option value="0" <?php if ($infrastrutture=="0") echo 'selected="selected"';?> >0</option>
		<option value="1" <?php if ($infrastrutture=="1") echo 'selected="selected"';?> >1</option>
		<option value="2" <?php if ($infrastrutture=="2") echo 'selected="selected"';?> >2</option>
		<option value="3" <?php if ($infrastrutture=="3") echo 'selected="selected"';?> >3</option>
		<option value="4" <?php if ($infrastrutture=="4") echo 'selected="selected"';?> >4</option>
		<option value="5" <?php if ($infrastrutture=="5") echo 'selected="selected"';?> >5</option>
	</select>
	</div>
	</div>

	<div class="form-group">
	<label for="edit-submitted-question-4" class="col-sm-3 control-label">Come valuti la qualità del corso? <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	<div class="col-sm-9">
	<select id="edit-submitted-question-4" name="qualita" class="form-control">
		<option value=""  <?php if ($qualita=="") echo 'selected="selected"';?> >- Scegliere -</option>
		<option value="0" <?php if ($qualita=="0") echo 'selected="selected"';?> >0</option>
		<option value="1" <?php if ($qualita=="1") echo 'selected="selected"';?> >1</option>
		<option value="2" <?php if ($qualita=="2") echo 'selected="selected"';?> >2</option>
		<option value="3" <?php if ($qualita=="3") echo 'selected="selected"';?> >3</option>
		<option value="4" <?php if ($qualita=="4") echo 'selected="selected"';?> >4</option>
		<option value="5" <?php if ($qualita=="5") echo 'selected="selected"';?> >5</option>
	</select>
	</div>
	</div>

	<div class="form-group">
	<label for="edit-submitted-question-5" class="col-sm-3 control-label">Come valuti l'organizzazione logistica del corso? <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	<div class="col-sm-9">
	<select id="edit-submitted-question-5" name="logistica" class="form-control">
		<option value=""  <?php if ($logistica=="") echo 'selected="selected"';?> >- Scegliere -</option>
		<option value="0" <?php if ($logistica=="0") echo 'selected="selected"';?> >0</option>
		<option value="1" <?php if ($logistica=="1") echo 'selected="selected"';?> >1</option>
		<option value="2" <?php if ($logistica=="2") echo 'selected="selected"';?> >2</option>
		<option value="3" <?php if ($logistica=="3") echo 'selected="selected"';?> >3</option>
		<option value="4" <?php if ($logistica=="4") echo 'selected="selected"';?> >4</option>
		<option value="5" <?php if ($logistica=="5") echo 'selected="selected"';?> >5</option>
	</select>
	</div>
	</div>

	<div class="form-group">
	<label for="edit-submitted-question-6" class="col-sm-3 control-label">Come valuti il livello della docenza? <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	<div class="col-sm-9">
	<select id="edit-submitted-question-6" name="docenza" class="form-control">
		<option value=""  <?php if ($docenza=="") echo 'selected="selected"';?> >- Scegliere -</option>
		<option value="0" <?php if ($docenza=="0") echo 'selected="selected"';?> >0</option>
		<option value="1" <?php if ($docenza=="1") echo 'selected="selected"';?> >1</option>
		<option value="2" <?php if ($docenza=="2") echo 'selected="selected"';?> >2</option>
		<option value="3" <?php if ($docenza=="3") echo 'selected="selected"';?> >3</option>
		<option value="4" <?php if ($docenza=="4") echo 'selected="selected"';?> >4</option>
		<option value="5" <?php if ($docenza=="5") echo 'selected="selected"';?> >5</option>
	</select>
	</div>
	</div>

	<div class="form-group">
	<label for="edit-submitted-question-7" class="col-sm-3 control-label">Pensi che le competenze acquisite possano esserti utili nella tua professione? <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	<div class="col-sm-9">
	<select id="edit-submitted-question-7" name="competenze" class="form-control">
		<option value=""  <?php if ($competenze=="") echo 'selected="selected"';?> >- Scegliere -</option>
		<option value="0" <?php if ($competenze=="0") echo 'selected="selected"';?> >Si</option>
		<option value="1" <?php if ($competenze=="1") echo 'selected="selected"';?> >Parzialmente</option>
		<option value="2" <?php if ($competenze=="2") echo 'selected="selected"';?> >No</option>
	</select>
	</div>
	</div>

	<div class="form-group">
	<label for="edit-submitted-question-8" class="col-sm-3 control-label">Pensi che gli obiettivi del corso siano stati raggiunti? <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	<div class="col-sm-9">
	<select id="edit-submitted-question-8" name="obiettivi" class="form-control">
		<option value=""  <?php if ($obiettivi=="") echo 'selected="selected"';?> >- Scegliere -</option>
		<option value="0" <?php if ($obiettivi=="0") echo 'selected="selected"';?> >Si</option>
		<option value="1" <?php if ($obiettivi=="1") echo 'selected="selected"';?> >Parzialmente</option>
		<option value="2" <?php if ($obiettivi=="2") echo 'selected="selected"';?> >No</option>
	</select>
	</div>
	</div>

	<div class="form-group">
	<label for="edit-submitted-question-9" class="col-sm-3 control-label">Il docente stimola l'interesse per la materia? <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	<div class="col-sm-9">
	<select id="edit-submitted-question-9" name="stimola" class="form-control">
		<option value=""  <?php if ($stimola=="") echo 'selected="selected"';?> >- Scegliere -</option>
		<option value="0" <?php if ($stimola=="0") echo 'selected="selected"';?> >0</option>
		<option value="1" <?php if ($stimola=="1") echo 'selected="selected"';?> >1</option>
		<option value="2" <?php if ($stimola=="2") echo 'selected="selected"';?> >2</option>
		<option value="3" <?php if ($stimola=="3") echo 'selected="selected"';?> >3</option>
		<option value="4" <?php if ($stimola=="4") echo 'selected="selected"';?> >4</option>
		<option value="5" <?php if ($stimola=="5") echo 'selected="selected"';?> >5</option>
	</select>
	</div>
	</div>

	<div class="form-group">
	  <label for="edit-submitted-question-10" class="col-sm-3 control-label">Come valuti la capacità di esposizione degli argomenti? <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	<div class="col-sm-9">
	 <select id="edit-submitted-question-10" name="esposizione" class="form-control">
		<option value=""  <?php if ($esposizione=="") echo 'selected="selected"';?> >- Scegliere -</option>
		<option value="0" <?php if ($esposizione=="0") echo 'selected="selected"';?> >0</option>
		<option value="1" <?php if ($esposizione=="1") echo 'selected="selected"';?> >1</option>
		<option value="2" <?php if ($esposizione=="2") echo 'selected="selected"';?> >2</option>
		<option value="3" <?php if ($esposizione=="3") echo 'selected="selected"';?> >3</option>
		<option value="4" <?php if ($esposizione=="4") echo 'selected="selected"';?> >4</option>
		<option value="5" <?php if ($esposizione=="5") echo 'selected="selected"';?> >5</option>
	</select>
	</div>
	</div>

	<div class="form-group">
	<label for="edit-submitted-question-11" class="col-sm-3 control-label">Come valuti il grado di disponibilità per chiarimenti ed approfondimenti? <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	<div class="col-sm-9">
	<select id="edit-submitted-question-11" name="disponibilita" class="form-control">
		<option value=""  <?php if ($disponibilita=="") echo 'selected="selected"';?> >- Scegliere -</option>
		<option value="0" <?php if ($disponibilita=="0") echo 'selected="selected"';?> >0</option>
		<option value="1" <?php if ($disponibilita=="1") echo 'selected="selected"';?> >1</option>
		<option value="2" <?php if ($disponibilita=="2") echo 'selected="selected"';?> >2</option>
		<option value="3" <?php if ($disponibilita=="3") echo 'selected="selected"';?> >3</option>
		<option value="4" <?php if ($disponibilita=="4") echo 'selected="selected"';?> >4</option>
		<option value="5" <?php if ($disponibilita=="5") echo 'selected="selected"';?> >5</option>
	</select>
	</div>
	</div>

	<div class="form-group">
	<label for="edit-submitted-osservazioni-e-suggerimenti" class="col-sm-3 control-label">Osservazioni e suggerimenti </label>
	<div class="col-sm-9">
	<textarea id="edit-submitted-osservazioni-e-suggerimenti" name="osservazioni" class="form-control"><?php echo htmlspecialchars($osservazioni); ?></textarea>
	</div>
	</div>

	<div class="form-group">
	  <label for="edit-submitted-come-sei-venuto-a-sapere-del-corso" class="col-sm-3 control-label">Come sei venuto a sapere del corso? <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	<div class="col-sm-9">

	<div class="checkbox"> 
	<label  for="edit-submitted-come-sei-venuto-a-sapere-del-corso-1"> 
	 <input type="checkbox" id="edit-submitted-come-sei-venuto-a-sapere-del-corso-1" name="amici" <?php if ($amici!="") echo '"checked"';?> value="Amici o colleghi" class="form-checkbox" />
   	Amici o colleghi 
	</label>
	</div>

	<div class="checkbox">

	<label for="edit-submitted-come-sei-venuto-a-sapere-del-corso-2">
	 <input type="checkbox" id="edit-submitted-come-sei-venuto-a-sapere-del-corso-2" name="internet"  <?php if ($internet!="") echo '"checked"';?> value="Internet" class="form-checkbox" />
  	Internet
	</label>
	</div>

	<div class="checkbox">
	<label class="control-label" for="edit-submitted-come-sei-venuto-a-sapere-del-corso-3">
	 <input type="checkbox" id="edit-submitted-come-sei-venuto-a-sapere-del-corso-3" name="mail_list" <?php if ($mail_list!="") echo '"checked"';?> value="Mailing list o forum" class="form-checkbox" />
   	Mailing list o forum
	</label>
	</div>

	<div class="checkbox">
	<label class="control-label" for="edit-submitted-come-sei-venuto-a-sapere-del-corso-4"> 
	 <input type="checkbox" id="edit-submitted-come-sei-venuto-a-sapere-del-corso-4" name="email" <?php if ($email!="") echo '"checked"';?> value="E-mail" class="form-checkbox" />
   	E-Mail
	</label>
	</div>

	<div class="checkbox">
	<label class="control-label" for="edit-submitted-come-sei-venuto-a-sapere-del-corso-5">
	 <input type="checkbox" id="edit-submitted-come-sei-venuto-a-sapere-del-corso-5" name="altro" <?php if ($altro!="") echo '"checked"';?> value="Altro" class="form-checkbox" />
   	Altro
	</label>
	</div>
	
	</div>
	
	<div class="form-group">	
	 <label for="edit-submitted-sito control-label" class="col-sm-3 control-label">Sito</label>
	 <div class="col-sm-9">
	<input type="text" id="edit-submitted-sito" name="sito" value="<?=$sito ?>" size="60" maxlength="128" class="form-control" />
	</div>
	</div>

	<div class="form-group">
	<label for="edit-submitted-quale" class="col-sm-3 control-label">Quale </label>
	<div class="col-sm-9">
	<input type="text" id="edit-submitted-quale" name="quale" value="<?=$quale ?>" size="60" maxlength="128" class="form-control" />
	</div>
	</div>
	
	<div class="form-group">
	<div class="col-sm-3">
	<input type="hidden" name="nome_corso" value="Corso di prova" />
	</div>
	<dic class="col-sm-9">
	<button type="submit" name="SUBMIT" value="Invia" class="btn btn-success">Invia</button>
	</div>
	</div>

	</form>
