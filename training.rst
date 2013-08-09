Corsi
---------------------------------------------------

Faunalia ha l'esperienza più vasta nel mondo nella formazione sui GIS liberi, avendo realizzato oltre 150 fra corsi, seminari e workshops, in italiano, inglese, portoghese e francese

Possiamo realizzare sia corsi standard che personalizzati, sia presso la nostra sede che nella vostra.

Iscrivetevi alla `mailing list <http://lists.faunalia.it/cgi-bin/mailman/listinfo/corsi>`_ per ricevere gli annunci di nuovi corsi.

Perché scegliere i corsi di Faunalia?
+++++++++++++++++++++++++++++++++++++++++++++++++++

* hanno un'alta qualità didattica: sono regolarmente valutati con indici di gradimento sempre molto alti (fra l'82% e il 93%, sulla base di questionari anonimi)
* sono completamente interattivi: la teoria è quindi sempre abbinata alla pratica
* sono tenuti da docenti che contribuiscono attivamente, da anni, allo sviluppo dei software oggetto dei corsi. In particolare, Paolo Cavallini è membro dello *Steering Committee* di QGIS, e Faunalia ha sviluppato parti di GRASS, PostGIS, GDAL ecc.
* hanno un costo sensibilmente inferiore alle alternative proprietarie presenti sul mercato
* contribuiscono al miglioramento dei software utilizzati, destinando al loro sviluppo parte delle quote di iscrizione
* consentono l'accesso agli esami AICA per la `certificazione ECDL-GIS <http://www.aicanet.it/aica/ecdl-gis/>`_ Paolo Cavallini è `esaminatore ECDL-GIS <http://www.ecdlgis.it/area-esaminatori/esaminatori-1/c>`_.

Cartografia con QGIS
+++++++++++++++++++++++++++++++++++++++++++++++++++

Per imparare ad installare ed utilizzare QGIS, ad accedere ai dati, tematizzarli e produrre mappe di qualità.

Adatto anche a chi ha poca esperienza sui GIS e sulla cartografia. È necessario avere dimestichezza con l'uso del PC.

Argomenti principali
===================================================

* Breve introduzione ai Sistemi Informativi Geografici opensource
* Introduzione a QGIS
* Installazione di QGIS nei vari sistemi operativi
* Interfaccia utente e criteri di utilizzo
* Configurazione dell'ambiente di lavoro
* Progetti
* Gestione dei plugins
* I dati geografici vettoriali

  * proprietà, importazione ed esportazione, conversione fra formati
  * tematizzazione vettoriale ed etichettatura avanzata
  * tabelle dati, attributi ed azioni; importazione di dati tabellari

* Gestione delle proiezioni
* Interfacciamento con GPS
* Digitalizzazione dei vettori, vettorializzazione avanzata di tipo "CAD"
* I geodatabase e QGIS: PostGIS e SpatiaLite
* Caricare dati dal web: soluzioni proprietarie, libere e standard (Google Maps, OpenLayers, WMS, WFS, WFS-T, CSW, WPS)
* I dati geografici raster

  * caratteristiche e proprietà, tematizzazione
  * gestione dei sistemi di riferimento, mosaici
  * georeferenziazione

* Stampa avanzata

Durata 
===================================================
Tre giorni *full time*

Analisi con QGIS
+++++++++++++++++++++++++++++++++++++++++++++++++++

Per imparare a realizzare analisi raster e vettoriali, e modellistica spaziale, unendo la potenza di elaborazione GIS di GRASS, SAGA, Orfeo ToolBox con la semplicità d'uso di QGIS. Al termine del corso, l'utente avrà appreso a gestire con facilità l'ambiente di lavoro di QGIS, e ad effettuare analisi anche complesse in modo semplice ed intuitivo. Il corso è adatto per chi desidera approfondire l'uso analitico e predittivo dei GIS, avendo già nozioni di base.

È necessaria una conoscenza base del GIS. È altamente consigliabile una conoscenza di base di QGIS.

Argomenti principali
===================================================
* Introduzione ai vari software

  * QGIS e i suoi plugins
  * Plugins addizionali
  * SEXTANTE
  * GRASS
  * SAGA
  * Orfeo ToolBox (OTB)

* Analisi vettoriali di base: dissolve, merge, overlay, gestione delle tabelle di attributi, ecc.
* Correzione di errori topologici e semplificazione dei vettori
* Analisi geomorfologica: creazione di modelli digitali del terreno, curve di livello, mappe di pendenza, esposizione, ombreggiatura
* Interpolazioni
* Buffer raster e vettoriali, analisi di distanza, percorsi di minimo costo
* Riclassificazione dei raster, algebra delle mappe
* Statistiche zonali
* Analisi di intervisibilità
* Analisi idrologiche: calcolo dei bacini
* Visualizzazioni tridimensionali
* Analisi multicriterio: mappe di priorità, mappe di rischio
* Classificazione automatica dell'uso del suolo, estrazione di elementi
* Analisi dei cambiamenti (land use change)
* Creazione di modelli, tramite interfaccia grafica o testuale; script per l'automazione di processo

Durata 
===================================================

Tre giorni *full time*

Come creare un plugin in Python per QGIS
+++++++++++++++++++++++++++++++++++++++++++++++++++

Per sviluppare plugins (estensioni) per QGIS, utilizzando il linguaggio di programmazione Python. La finalità principale è fornire i concetti fondamentali e l'esperienza pratica per lo sviluppo di plugins. Dopo una breve introduzione al linguaggio di programmazione, i partecipanti saranno guidati passo a passo nella creazione di un plugin.

È preferibile, ma non obbligatoria, una conoscenza di base di Phyton. È necessaria una conoscenza di base dei principi di programmazione.

Argomenti principali
===================================================

* Come creare un plugin Python per QGIS

  * la sintassi Python (indentazione, punto e virgola, ...)
  * il mio primo plugin in Python: mostra un messaggio in un riquadro
  * creare interfacce utente con QtDesigner (.ui)
  * secondo plugin: aggiungere un layer all’area di mappa di QGIS
  * creare un file di risorse (.qrc)

* Le classi principali delle API Qt

  * il modulo QTCore (QObject, QString, QAction, QFile, ...)
  * il modulo QTGui (QWidget, QDialog, QMessageBox, QFileDialog, ...)
  * accedere alla API QT tramite Python: PyQT (tipi QT mappati da tipi nativi Python, parametro di uscita)

* Le principali classi API QGIS e le loro relazioni

  * costanti e impostazioni: classi QGis e QgsApplication
  * l’interfaccia del plugin: QgisInterface e metodi comuni usati nei plugins
  * area mappa, strati e legenda: QgsMapCanvas, QgsMapLayer, QgsLegendInterface, QgsMapLayerRegistry
  * strati vettoriali: QgsVectorLayer, QgsVectorDataProvider, QgsField, QgsFeature, QgsGeometry
  * strati raster: QgsRasterLayer, QgsRasterDataProvider
  * strumenti di mappa e banda elastica: QgsMapTool, QgsMapToolEmitPoint, QgsRubberBand
  * elementi della mappa e snap: QgsMapCanvasItem, QgsVertexMarker, QgsSnapper
  * classi dei sistemi di riferimento: QgsCoordinateReferenceSystem, QgsCoordinateTransform
  * classi di utilità: QgsDataSourceURI

* Usiamo pyQGIS

  * esempi di codice

Durata 
===================================================

Tre giorni *full time*

Geodatabase: PostgreSQL e PostGIS
+++++++++++++++++++++++++++++++++++++++++++++++++++

Nuovo! Ora aggiornato a PostGIS 2.0: nuova procedura di installazione e configurazione, nuovi comandi, supporto a gestione e analisi raster, topologia.

Il corso è rivolto a chi, per la gestione di banche dati geografiche complesse, per la necessità di svolgere analisi approfondite e per la visualizzazione on line in tempo reale delle analisi fatte, vuole utilizzare una banca dati evoluta e di ottima stabilità. Il corso permette di familiarizzare con la gestione dei dati vettoriali tramite SQL, con l'importazione dei dati geografici in PostgreSQL (a partire da formati di interscambio standard), con l'interrogazione di dati sia geografici che alfanumerici tramite numerose applicazioni. Permette inoltre di apprendere l'uso di funzioni di analisi geografica effettuata direttamente da database.

Preferibile conoscenza del linguaggio SQL. È necessario avere dimestichezza con l'uso del PC.

Argomenti principali
===================================================

* Introduzione ai sistemi informativi territoriali opensource
* Vantaggi dell'uso di un database nel GIS
* Introduzione al RDBMS Open Source PostgreSQL
* Schemi tabelle, viste, domini, funzioni
* Prima configurazione del database
* Utenti, permessi, accessi
* Introduzione a PostGIS (standard Open Geospatial Consortium)
* Geodatabase: struttura e formato dati
* Creazione di un database geografico
* Amministrazione del database e accesso ai dati
* Amministrazione da riga di comando: psql
* I front-ends grafici: QGIS, PhpPgAdmin, PgAdmin 3, OpenOffice, ecc.
* PostGIS e QGIS: Importazione shapefile, Digitalizzazione, Query, Plugins avanzati per queries: RT SQL Layer e RT SQL extractor
* Funzioni avanzate di geodatabase: Funzioni standard OGC, Estensioni di PostGIS, Conversione tra sistemi di coordinate
* I raster in PostGIS
* Cenni sulla topologia
* Copia e salvataggio

Durata 
===================================================
Tre giorni *full time*

WebMapping con Quantum GIS
+++++++++++++++++++++++++++++++++++++++++++++++++++
Per apprendere in breve tempo il più innovativo e semplice ambiente di sviluppo per WebGIS e WebMapping, basato su QGIS.

Sono necessarie nozioni di base sui GIS, sulla cartografia e sul web. È consigliabile una conoscenza di base di QGIS. È necessario avere piena dimestichezza con l'uso del PC.

Argomenti principali
===================================================

* Gli standard Open Geospatial Consortiumgit@github.com:soundarapandian/faunalia.git per la pubblicazione

  * WMS, WFS, WFS-T, WCS, WPS

* Installazione e configurazione di QGIS server
* Pubblicare WMS e WFS
* Editing online: WFS-T
* Installazione e configurazione di QGIS web client
* Installazione e configurazione di LizMap
* Criteri di ottimizzazione

Durata 
===================================================

Due giorni *full time*

Calendario 
+++++++++++++++++++++++++++++++++++++++++++++++++++

.. note:: can we add an "export as calendar" link?
.. rst-class:: table  
===================================  ===============  ====================
Corso                                Date             Scadenza iscrizione
===================================  ===============  ====================
Cartografia con QGIS                 25-27 Settembre  10 Settembre
Analisi con QGIS                     16-18 Ottobre    1 Ottobre
Creare un plugin in Python per QGIS  13-15 Novembre   28 Ottobre
Geodatabase (PostgreSQL / PostGIS)   11-13 Dicembre   25 Novembre
Web Mapping con QGIS                 23-24 Gennaio    10 Gennaio
===================================  ===============  ====================

Costi
===================================================

* Corsi di 3 giorni: 350 € per i privati, 320 € + IVA per aziende/partite IVA (meno la ritenuta d'acconto, da versare 323,41 €)
* Corso di Web Mapping (2 giorni): 290 € per i privati, 270 € + IVA per aziende/partite IVA (meno la ritenuta d'acconto, da versare 272,88 €)
* Sconto 5% per l'iscrizione simultanea a più corsi

Logistica
===================================================

* Sede: `Pont-Tech <http://www.pont-tech.it/?page_id=957>`_, oppure `Faunalia <http://www.openstreetmap.org/?lat=43.66154&lon=10.63763&zoom=17>`_, facilmente raggiungibili con mezzi pubblici (treno ed aereo)
* `Dettagli sulla città <http://www.comune.pontedera.pi.it/cittadino/Citta_index/ufficio-turistico/ufficio_turistico>`_ (incluse strutture ricettive)
* B&B `Il Piccolo <http://www.ilpiccolorooms.it/>`_, adiacente: 45/60/80 € per camere singole/doppie/triple

Modulo di iscrizione
+++++++++++++++++++++++++++++++++++++++++++++++++++

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
	<form action="training.html#modulo-di-iscrizione" method="post">

	<label for="edit-submitted-nome">Nome <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	<input type="text" id="edit-submitted-nome" name="nome" value="<?=$nome ?>" size="60" maxlength="128" class="input-xlarge required" />

	<label for="edit-submitted-cognome">Cognome <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	<input type="text" id="edit-submitted-cognome" name="cognome" value="<?=$cognome ?>" size="60" maxlength="128" class="input-xlarge required" />

	<label for="edit-submitted-indirizzo">Indirizzo <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	<input type="text" id="edit-submitted-indirizzo" name="indirizzo" value="<?=$indirizzo ?>" size="60" maxlength="128" class="input-xlarge required" />

	<label for="edit-submitted-telefono">Telefono <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	<input type="text" id="edit-submitted-telefono" name="telefono" value="<?=$telefono ?>" size="60" maxlength="128" class="input-xlarge required" />

	<label for="edit-submitted-e-mail">E-Mail <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	<input class="email input-xlarge form-email required" type="email" value="<?=$email ?>" id="edit-submitted-e-mail" name="email" size="60" />

	<label for="edit-submitted-corso">Corso <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>
	<select id="edit-submitted-corso" name="corso" class="input-xlarge required">
		<option value="" <?php if ($corso=="") echo 'selected="selected"';?> >- Scegliere -</option>
		<option value="qgis_cartografia" <?php if ($corso=="qgis_cartografia") echo 'selected="selected"';?> >QGIS cartografia</option>
		<option value="qgis_analisi" <?php if ($corso=="qgis_analisi") echo 'selected="selected"';?> >QGIS analisi</option>
		<option value="pyqgis" <?php if ($corso=="pyqgis") echo 'selected="selected"';?> >Python-QGIS</option>
		<option value="postgis" <?php if ($corso=="postgis") echo 'selected="selected"';?> >Geodatabase</option>
		<option value="webgis" <?php if ($corso=="webgis") echo 'selected="selected"';?> >WebMapping</option>
	</select>

	<label for="edit-submitted-dati-per-fatturazione">Dati per fatturazione <span class="form-required" title="Questo campo è obbligatorio.">*</span></label>

	<textarea id="edit-submitted-dati-per-fatturazione" name="dati_per_fatturazione" cols="60" rows="5" class="input-xlarge required"><?php echo htmlspecialchars($dati_per_fatturazione); ?></textarea></div>

  <div>
	<label for="edit-submitted-note">Note </label>
	<textarea id="edit-submitted-note" name="note" cols="60" rows="5" class="input-xlarge"><?php echo htmlspecialchars($note); ?></textarea>
  </div>

	<input type="submit" name="SUBMIT" value="Invia" class="btn btn-primary"/>
	</form>

