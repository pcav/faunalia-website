.. meta::
   :description lang=en: Faunalia, Open Source GIS. Leader in solutions based on QGIS: training, development, support
   :description lang=it:  Faunalia, GIS Open Source. Impresa leader nelle soluzioni basate su QGIS: formazione, sviluppo, supporto
   :description lang=pt_PT:  Faunalia, SIG Open Source. Empresa líder em soluções baseadas em QGIS: formação, desenvolvimento, suporte
   :description lang=pt_BR:  Faunalia, SIG Open Source. Empresa líder em soluções baseadas em QGIS: formação, desenvolvimento, suporte
   :description lang=es:  Faunalia, Open Source GIS. Líder en soluciones basadas en QGIS: cursos, desarrollo, asistencia
   :description lang=fr:  Faunalia, SIG Open Source. Leader dans les solutions basés sur QGIS: formation, développement, assistance
   :keywords: Open Source, Free Software, Software libero, GIS, SIG, QGIS, Quantum GIS, GRASS, SAGA, OTB, PostGIS, PostgreSQL, OsGeo, OGC, supporto, assistenza, risoluzione bugs, migrazione, support, bug fixing, migration, sviluppo, development, corsi, formazione, training courses, développement, assistance, formation

.. toctree::
    :maxdepth: 4
    :hidden:

    Corsi <training>
    Assistenza <support>
    Sviluppo <dev>
    Attività <jobs>
    Chi siamo <intro>
    Error <404>
    Dummy <dummy>

.. cssclass :: topcont

Faunalia
==========================================================================
.. image :: images/logo_faunalia_notext.png

Faunalia
--------------------------------------------------------------------------

Sistemi informativi territoriali liberi ed open source

.. cssclass :: bottomcont

Specialisti di QGIS e Database Geografici PostGIS
============================================================================

QGIS_ e PostGIS_ mettono a disposizione un grande numero di funzionalità per visualizzare, gestire, editare e analizzare dati geografici e per creare stampe con simbologia cartografica avanzata.

QGIS_ e PostGIS_ forniscono un modo semplice ed economico per gestire grandi volumi di dati (ad es. Catasto Urbano, Catasto Rurale, etc.) e per pubblicare servizi standard OpenGeospatialConsortium_ (WMS, WFS, WCS), così come mappe on-line (WebGIS).

I servizi di Faunalia sono presenti nel `catalogo del Mercato Elettronico della Pubblica Amministrazione <https://www.acquistinretepa.it/catricerche/ricercaSemplice.do?cerca=faunalia>`_. È quindi ora ancora più facile per le Pubbliche Amministrazioni aderire.


`Un esempio di WebGIS di Faunalia: <https://lizmap.faunalia.eu/index.php/view/map/?repository=faunalia&project=pontedera>`_

.. image:: images/wg_pontedera.png
   :alt: Demo webGIS Pontedera
   :target: https://lizmap.faunalia.eu/index.php/view/map/?repository=faunalia&project=pontedera
   :width: 85 %
   :align: center

.. cssclass :: col-md-4  cor

Corsi
===========================================================================

Vuoi imparare, in modo rapido ed efficace, a conoscere e gestire appieno il tuo GIS? 

:doc:`More info <training>`

.. cssclass :: col-md-4 ass

Assistenza
============================================================================

Vuoi la certezza e la tranquillità di un supporto costante per la soluzione dei tuoi problemi?

:doc:`More info <support>`

.. cssclass :: col-md-4  svi

Sviluppo
=============================================================================

Hai bisogno di un nuovo comando, di un plugin per velocizzare il tuo lavoro o di correggere un bug?

:doc:`More info <dev>`

.. cssclass :: topcont

Faunalia
==========================================================================

News
--------------------------------------------------------------------------

World first: sailing & QGIS
+++++++++++++++++++++++++++

* Love sailing? Come to the first `QGIS course on a cruise! <sail_course.html>`_

Need 3D in QGIS? A glimpse of the future
+++++++++++++++++++++++++++++++++++++++++++

* You can use `Qgis2threejs <https://plugins.qgis.org/plugins/Qgis2threejs/>`_ plugin to easily create `dynamic 3D visualization of your map <https://www.faunalia.eu/it/3d/20160316105926.html>`_, and that's fun enough. Look at what you'll be able to do, even more easily, in the near future, once QGIS has moved to Qt5 - work underway. `Minoru <https://github.com/minorua>`_ rocks!

.. image :: images/next-3d.gif
   :width: 300px

Layer board: configure your big QGIS projects, easily
+++++++++++++++++++++++++++++++++++++++++++++++++++++++

* Configuring large projects, with tens of layers, can be painful if you have to set up min and max scale, CRS, style, title, extent, etc. one by one. `Layer board <https://plugins.qgis.org/plugins/LayerBoard/>`_ plugin makes all this a breeze: you have a spreadsheet where you can enter directly the values for all layer parameters. Moreover, you can clean up your projects by automagically removing ghost layers that sometimes accumulate. Kudos to *Michaël Douchin* from 3liz!

.. image :: images/layer_board.png
   :width: 300px

Another nice plugin: Historical maps
+++++++++++++++++++++++++++++++++++++

* A very simple to use, yet powerful plugin (`Historical Map <https://plugins.qgis.org/plugins/HistoricalMap/>`_) for doing supervised classification of land use. It is especially designed for finding woodlands in historical maps, but I tested with normal ortophoto, with good results.

.. image :: images/hist_map.png
   :width: 300px

Big plans for next QGIS_
++++++++++++++++++++++++++

* Major transitions in large software projects are always a big challenge, and involve considerable risks. After a long gestation, now we have a definite plan towards QGIS 3.0, andt we believe this is the best way forward. `Read about it <https://blog.qgis.org/2016/02/10/qgis-3-0-plans/>`_, straight from the project leader, and join us for the next leap forward.

Workshop su QGIS_
++++++++++++++++++++

* Al `GRASS Meeting 2016 <http://meetingrass2016.unipr.it/>`_, presso l'Università di Parma, Paolo Cavallini terrà un workshop sulle ultime novità di QGIS, fino alla versione 2.14, di imminente pubblicazione. Ci vediamo lì!

Novità in QGIS_
+++++++++++++++++++

* Nuova versione di QGIS "stabile" (*Long Term Release*, LTR): 2.8.4, che sistema oltre 80 malfunzionamenti, inclusi alcuni importanti
* Nuova versione di QGIS "Lyon" (2.12.1), che sistema quasi 70 malfunzionamenti
* `Nuova versione di QField <http://www.opengis.ch/2015/12/01/qfield-for-android-5/>`_, che **finalmente** gira anche su Android 5! La trovate in Google Play

.. image :: images/qfield1.png
   :width: 300px


An easier and safer life for QGIS plugin writer
++++++++++++++++++++++++++++++++++++++++++++++++

* Now, thanks to Martin Dobias, plugin writer can relax a bit more: with the plugin `First Aid <https://plugins.qgis.org/plugins/firstaid/>`_ finding errors and debugging your plugin will be far easier. This will also help you to get ready for the upcoming Python 3 and Qt 5 transition, a major breakthrough.

.. image :: images/firstaidplugin.png
   :width: 48px

Nasce il gruppo italiano degli utenti di QGIS_
++++++++++++++++++++++++++++++++++++++++++++++++++++++

* Siamo finalmente pronti: da oggi chi è interessato al futuro di QGIS potrà partecipare attivamente. Trovate le semplicissime istruzioni sul sito `QGIS.it <https://qgis.it/>`_ . In pratica, ci mettiamo insieme, tutti quelli che donano (codice o euro) al progetto decidono poi insieme come investire quanto raccolto. Per qualunque chiarimento, non esitate a chiedere.

.. image :: images/qgis-icon.png
   :width: 300px

Paolo Cavallini appointed as QGIS co-chair
++++++++++++++++++++++++++++++++++++++++++++

* **QGIS.org** is becoming a formal association. In this process, Tim Sutton has been elected as Chair of the project, and Paolo Cavallini as co-chair - a great honour and responsibility. See the `blog post <https://blog.qgis.org/2015/11/03/introducing-the-qgis-board/>`_.

Yet another country: Faunalia training in Saudi Arabia
++++++++++++++++++++++++++++++++++++++++++++++++++++++++

* Renzo Cavallini has recently done a successful course at the College of Technology in Riyadh (Saudi Arabia) about geotechnical testing.

.. image :: images/arabia1.jpg
   :width: 300px

Faunalia al Linux Day
+++++++++++++++++++++++

* Paolo Cavallini parlerà di geografia libera (QGIS e dati geografici) al `Linux Day di Livorno <http://linux.livorno.it/sito/1080/linux-day-2015/>`_: una chiacchierata informale, venite e chiedete.

.. image :: images/ld_li_2015.png
   :width: 300px

Let us hear your voice: a survey on QGIS usage
+++++++++++++++++++++++++++++++++++++++++++++++++

* We would like to better understand how you are using QGIS so that we can improve the way that we manage the project. We have compiled this short survey, and would be most appreciative if you could take a few minutes to complete it for us. All responses are anonymous and we will share the results with the community so that we can all benefit from the insights gained. You can find the `survey here <https://blog.qgis.org/2015/10/15/take-the-qgis-user-survey/>`_

New PostGIS version
+++++++++++++++++++++

* Just released **PostGIS 2.2.0**: lots of `improvements and new functions <https://svn.osgeo.org/postgis/tags/2.2.0/NEWS>`_. My favourite of the day: `ST_ClusterWithin <https://postgis.net/docs/manual-2.2/ST_ClusterWithin.html>`_, which aggregates all geometries within a set distance from the others.

GFOSS Day Italia 2015: Faunalia c'è
+++++++++++++++++++++++++++++++++++++

* Faunalia sarà presente al `GFOSS Day 2015 <http://gfossday2015.associazionegfoss.it/index.html>`_, la settima conferenza italiana sul software geografico libero ed open source, a Lecco il 28 e 29 settembre, con: (1) un workshop su QGIS_; (2) una conferenza sullo stato di sviluppo del progetto QGIS_; (3) un intervento, già annunciato, nell'ambito della `conferenza ASITA <http://www.asita.it/>`_. Per iscrivervi al workshop, usate la `pagina di registrazione <http://gfossday2015.associazionegfoss.it/registrazione.html>`_. L'iscrizione è gratuita per i soci GFOSS.it, richiede una donazione per i non soci. **A presto!**

QGIS keeps on growing in popularity, ArcGIS starts declining?
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

* `Long term trends in internet searches <https://www.google.com/trends/explore#q=qgis%2C%20arcgis%2C%20gvsig%2C%20mapinfo&cmpt=q&tz=Etc%2FGMT-2>`_ seem to show a continuous increase in QGIS popularity; what is new is that the proprietary market leader started loosing ground, for the first time ever - future is bright for free GIS.

.. image :: images/trends0.png
   :width: 300px

Really Fast Fourier filter for rasters in QGIS
++++++++++++++++++++++++++++++++++++++++++++++++

* I just approved for publication an interesting plugin: `FFT Convolution Filters <https://plugins.qgis.org/plugins/fft-convolution-filter-master/>`_; it allows both to detect edges and smooth an existing raster - and it's impressively fast! *Beware*: you need NumPy, SciPy and Rasterio python modules installed in your system. Have fun.

.. image :: images/ff_convolution.png
   :width: 300px

Full GRASS 7 support in QGIS
+++++++++++++++++++++++++++++++

* Thanks to the patient work of Radim Blazek, and to the many donors, the work on a full, and much improved, support for GRASS in QGIS is almost completed. See the detail at the `crowdfunding page <http://www.gissula.eu/qgis-grass-plugin-crowdfunding/progress.html>`_. Expected delivery in 1.5 months, with QGIS 2.12.

A WPS inside QGIS?
++++++++++++++++++++

* Thanks to friends from `3Liz <http://www.3liz.com/>`_, you can now have `Web Processing <https://github.com/3liz/qgis-wps4server>`_ within your QGIS server, in addition to the existing WMS and WFS. **wps4server** is a QGIS Server Plugin that provides `OGC Web Processing <http://www.opengeospatial.org/standards/wps>`_ capabilities, based on `PyWPS <http://pywps.wald.intevation.org/>`_ and QGIS Processing. With wps4server you can publish all the QGIS Processing algorithms through Web Processing. This means you can create a Web Processing Service that provides QGIS, GRASS7, GDAL/OGR, Orfeo Toolbox, SAGA algorithms, and also your R and Python scripts algorithms, and your Processing models. With a configuration file, you can restrict the algorithms number. `Source code and an installation guide <//github.com/3liz/qgis-wps4server>`_ available. *Test and feedback are welcome!*

More background maps in QGIS
+++++++++++++++++++++++++++++++

* One hidden gem in QGIS: `QuickMapServices Plugin <https://plugins.qgis.org/plugins/quick_map_services/>`_; it allows you to add 47 background layers from the web, including the well known Google services as well as less known, interesting stuff - and you are encouraged to add your own!

.. image :: images/quickmapservices.png
   :width: 300px

Paolo Cavallini @ ASITA
+++++++++++++++++++++++++++

* Nella prossima `conferenza ASITA <http://www.asita.it/>`_ (Federazione delle Associazioni Scientifiche per le Informazioni Territoriali e Ambientali) terremo un intervento nella sessione `Il software geografico libero: una reale opportunità di sviluppo? <http://www.asita.it/blog/il-software-geografico-libero-una-reale-opportunita-di-sviluppo/>`_ Siete i benvenuti, passate ed intervenite.

.. figure:: http://www.asita.it/static/media/uploads/blog/lecco.jpg
   :width: 300px

Change the interface of your QGIS
++++++++++++++++++++++++++++++++++++++++

* It is now possible, in the development version of QGIS, to `choose and create your theme <http://nathanw.net/2015/08/29/ui-theme-support-now-core-in-qgis/>`_. If you create something interesting, why not sharing it, so it may go in the next version, due in October?

.. figure:: https://woostuff.files.wordpress.com/2015/08/qgis-b789fab_029.png?w=730
   :width: 300px

Opinions on QGIS: today and the future
++++++++++++++++++++++++++++++++++++++++

* An `interview <https://exporttocanoma.blogspot.it/2015/08/intervista-paolo-cavallini.html>`_ with Paolo Cavallini about QGIS and more. In Italian, sorry, non-latins! :)

Customize your QGIS menus
++++++++++++++++++++++++++++

* The flux of plugins keeps on steady - just published: **Menu builder**: Create your own menus with your favorite layers. Easy configuration is done with drag & drop from the qgis browser. More are in the queue, stay tuned.

.. figure:: https://github.com/Oslandia/qgis-menu-builder/raw/master/preview.png
   :width: 300px

New QGIS Long Term Release
++++++++++++++++++++++++++++++++

* `QGIS 2.8.3 'Wien' new bugfix release is out <https://qgis.org/en/site/forusers/download.html>`_. Hundreds of bugfixes `(see the list <https://github.com/qgis/QGIS/compare/final-2_8_2...final-2_8_3>`_) - upgrade now! `More details on the QGIS blog <https://blog.qgis.org/2015/08/06/point-release-qgis-2-8-3-wien-is-ready/>`_

A new QGIS plugin: Natural earth data
+++++++++++++++++++++++++++++++++++++++

* Just published: `a new plugin <https://plugins.qgis.org/plugins/natural_earth_raster/>`_ to automatically download Natural Earth data. Enjoy, and `report any issue <https://github.com/informeren/qgis-natural-earth-raster/issues>`_

Yet another interesting QGIS plugin: Cartograms
+++++++++++++++++++++++++++++++++++++++++++++++++

* `Create distorted maps <https://plugins.qgis.org/plugins/cartogram/>`_, where areas of each polygon represents a variable in your data. An example:

.. figure:: https://raw.githubusercontent.com/informeren/qgis-cartogram/develop/assets/cartogram.png
   :width: 400px

.. _QGIS: https://www.qgis.org/
.. _PostGIS: http://postgis.net/
.. _OpenGeospatialConsortium: http://www.opengeospatial.org/
