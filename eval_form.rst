Questionario di valutazione corsi
-------------------------------------------------------------------------------

Minimo 0, Massimo 5

.. raw:: html

	<?php
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
	<form action="<?php echo $pageName; ?>" method="post" class="vertical-space">

	<label for="edit-submitted-question-1">Il corso ha corrisposto alle tue aspettative? <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	<select id="edit-submitted-question-1" name="aspettative" class="input-xlarge required">
	<option value="" selected="selected">- Scegliere -</option>
	<option value="0">0</option>
	<option value="1">1</option>
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">4</option>
	<option value="5">5</option></select>

	<label for="edit-submitted-question-2">La durata del corso è stata sufficiente? <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	<select id="edit-submitted-question-2" name="durata" class="input-xlarge required"><option value="" selected="selected">- Scegliere -</option><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option></select>

	<label for="edit-submitted-question-3">Come valuti le infrastrutture utilizzate? <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	<select id="edit-submitted-question-3" name="infrastrutture" class="input-xlarge required"><option value="" selected="selected">- Scegliere -</option><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option></select>

	<label for="edit-submitted-question-4">Come valuti la qualità del corso? <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	<select id="edit-submitted-question-4" name="qualita" class="input-xlarge required"><option value="" selected="selected">- Scegliere -</option><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option></select>

	<label for="edit-submitted-question-5">Come valuti l'organizzazione logistica del corso? <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	<select id="edit-submitted-question-5" name="logistica" class="input-xlarge required"><option value="" selected="selected">- Scegliere -</option><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option></select>

	<label for="edit-submitted-question-6">Come valuti il livello della docenza? <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	<select id="edit-submitted-question-6" name="docenza" class="input-xlarge required"><option value="" selected="selected">- Scegliere -</option><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option></select>

	<label for="edit-submitted-question-7">Pensi che le competenze acquisite possano esserti utili nella tua professione? <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	<select id="edit-submitted-question-7" name="competenze" class="input-xlarge required"><option value="" selected="selected">- Scegliere -</option><option value="0">Si</option><option value="1">Parzialmente</option><option value="2">No</option></select>

	<label for="edit-submitted-question-8">Pensi che gli obiettivi del corso siano stati raggiunti? <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	<select id="edit-submitted-question-8" name="obiettivi" class="input-xlarge required"><option value="" selected="selected">- Scegliere -</option><option value="0">Si</option><option value="1">Parzialmente</option><option value="2">No</option></select>

	<label for="edit-submitted-question-9">Il docente stimola l'interesse per la materia? <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	<select id="edit-submitted-question-9" name="stimola" class="input-xlarge required"><option value="" selected="selected">- Scegliere -</option><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option></select>

	  <label for="edit-submitted-question-10">Come valuti la capacità di esposizione degli argomenti? <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	 <select id="edit-submitted-question-10" name="esposizione" class="input-xlarge required"><option value="" selected="selected">- Scegliere -</option><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option></select>

	<label for="edit-submitted-question-11">Come valuti il grado di disponibilità per chiarimenti ed approfondimenti? <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	<select id="edit-submitted-question-11" name="disponibilita" class="input-xlarge required"><option value="" selected="selected">- Scegliere -</option><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option></select>

	<label for="edit-submitted-osservazioni-e-suggerimenti">Osservazioni e suggerimenti </label>
	<textarea id="edit-submitted-osservazioni-e-suggerimenti" name="osservazioni" cols="60" rows="5" class="input-xlarge"></textarea>

	  <label for="edit-submitted-come-sei-venuto-a-sapere-del-corso">Come sei venuto a sapere del corso? <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
   <label class="option checkbox" for="edit-submitted-come-sei-venuto-a-sapere-del-corso-1">
    Amici o colleghi 
	 <input type="checkbox" id="edit-submitted-come-sei-venuto-a-sapere-del-corso-1" name="amici" value="Amici o colleghi" class="form-checkbox" />
   </label>
   <label class="option checkbox" for="edit-submitted-come-sei-venuto-a-sapere-del-corso-2">
    Internet 
	 <input type="checkbox" id="edit-submitted-come-sei-venuto-a-sapere-del-corso-2" name="internet" value="Internet" class="form-checkbox" />
   </label>
  <label class="option checkbox" for="edit-submitted-come-sei-venuto-a-sapere-del-corso-3">
    Mailing list o forum 
	 <input type="checkbox" id="edit-submitted-come-sei-venuto-a-sapere-del-corso-3" name="mail_list" value="Mailing list o forum" class="form-checkbox" />
  </label>
   <label class="option checkbox" for="edit-submitted-come-sei-venuto-a-sapere-del-corso-4">
    E-mail 
	 <input type="checkbox" id="edit-submitted-come-sei-venuto-a-sapere-del-corso-4" name="email" value="E-mail" class="form-checkbox" />
   </label>
   <label class="option checkbox" for="edit-submitted-come-sei-venuto-a-sapere-del-corso-5">
    Altro 
	 <input type="checkbox" id="edit-submitted-come-sei-venuto-a-sapere-del-corso-5" name="altro" value="Altro" class="form-checkbox" />
   </label>

	  <label for="edit-submitted-sito">Sito </label>
	 <input type="text" id="edit-submitted-sito" name="sito" value="" size="60" maxlength="128" class="input-xlarge" />

	<label for="edit-submitted-quale">Quale </label>
	<input type="text" id="edit-submitted-quale" name="quale" value="" size="60" maxlength="128" class="input-xlarge" />

	<input type="hidden" name="nome_corso" value="Corso di prova" />
  <br>
	<input type="submit" name="SUBMIT" value="Submit inscription" class="btn btn-primary"/>
	</form>
