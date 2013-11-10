.. meta::
   :description: Faunalia home page
   :keywords: Open Source, Free Software, Software libero, Software Livre, Software Aberto, GIS, SIG, QGIS, Quantum GIS, GRASS, SAGA, OTB, PostGIS, PostgreSQL, OsGeo, OGC, lavori, clienti, jobs, clients, trabalhos, clientes, travaux, clients

.. |it| image:: images/italy.png
.. |pt| image:: images/portugal.png

Attività svolte
-------------------------------------------------------------------------------

Mappa dei lavori di Faunalia
...............................................................................

.. figure:: images/jobs_map.png
   :alt: Faunalia job locations
   :target: ../map/lizmap/www/index.php/view/map/?repository=faunalia&project=faunalia_map_en

   `Esplora la mappa <../map/lizmap/www/index.php/view/map/?repository=faunalia&project=faunalia_map_it>`_

.. raw:: html

	<?php require_once('/usr/local/src/website_scripts/backend_ufficio.inc'); ?>

Maggiori clienti
...............................................................................

.. raw:: html
	
	<?php 
		$amm = array();
		$uni = array(); 
		$soc = array();
		$org = array();
		getListsOfCommittenti(_("it"), $amm, $uni, $soc, $org);
	?>
	
Amministrazione pubblica
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
.. raw:: html
	
	<?php printListOfCommittenti($amm); ?>

Università e centri di ricerca
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
.. raw:: html
	
	<?php printListOfCommittenti($uni); ?>

Società
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
.. raw:: html
	
	<?php printListOfCommittenti($soc); ?>

Associazioni e organizzazioni
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
.. raw:: html

	<?php printListOfCommittenti($org); ?>

Corsi e workshop
...............................................................................
.. raw:: html
	
	<?php getTableOfLavoriGis(); ?>

Assistenza e sviluppo
...............................................................................
.. raw:: html
	
	<?php getTableOfLavoriGis(true); ?>

Pubblicazioni
...............................................................................

.. raw:: html

	<?php printListOfPubblicazioniFreeGis(); ?>
