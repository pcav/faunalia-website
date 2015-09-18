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

`Esempio di WebGIS di Faunalia <http://lizmap.faunalia.eu/index.php/view/map/?repository=faunalia&project=pontedera>`_

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

QGIS keeps on growing in popularity, ArcGIS starts declining?
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

* `Long term trends in internet searches <https://www.google.com/trends/explore#q=qgis%2C%20arcgis%2C%20gvsig%2C%20mapinfo&cmpt=q&tz=Etc%2FGMT-2>`_ seem to show a continuous increase in QGIS popularity; what is new is that the proprietary market leader started loosing ground, for the first time ever - future is bright for free GIS.

.. image :: images/trends0.png
   :width: 300px

Really Fast Fourier filter for rasters in QGIS
++++++++++++++++++++++++++++++++++++++++++++++++

* I just approved for publication an interesting plugin: `FFT Convolution Filters <http://plugins.qgis.org/plugins/fft-convolution-filter-master/>`_; it allows both to detect edges and smooth an existing raster - and it's impressively fast! *Beware*: you need NumPy, SciPy and Rasterio python modules installed in your system. Have fun.

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

* One hidden gem in QGIS: `QuickMapServices Plugin <http://plugins.qgis.org/plugins/quick_map_services/>`_; it allows you to add 47 background layers from the web, including the well known Google services as well as less known, interesting stuff - and you are encouraged to add your own!

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

* An `interview <http://exporttocanoma.blogspot.it/2015/08/intervista-paolo-cavallini.html>`_ with Paolo Cavallini about QGIS and more. In Italian, sorry, non-latins! :)

Customize your QGIS menus
++++++++++++++++++++++++++++

* The flux of plugins keeps on steady - just published: **Menu builder**: Create your own menus with your favorite layers. Easy configuration is done with drag & drop from the qgis browser. More are in the queue, stay tuned.

.. figure:: https://github.com/Oslandia/qgis-menu-builder/raw/master/preview.png
   :width: 300px

New QGIS Long Term Release
++++++++++++++++++++++++++++++++

* `QGIS 2.8.3 'Wien' new bugfix release is out <http://qgis.org/en/site/forusers/download.html>`_. Hundreds of bugfixes `(see the list <https://github.com/qgis/QGIS/compare/final-2_8_2...final-2_8_3>`_) - upgrade now! `More details on the QGIS blog <http://blog.qgis.org/2015/08/06/point-release-qgis-2-8-3-wien-is-ready/>`_

A new QGIS plugin: Natural earth data
+++++++++++++++++++++++++++++++++++++++

* Just published: `a new plugin <https://plugins.qgis.org/plugins/natural_earth_raster/>`_ to automatically download Natural Earth data. Enjoy, and `report any issue <https://github.com/informeren/qgis-natural-earth-raster/issues>`_

Yet another interesting QGIS plugin: Cartograms
+++++++++++++++++++++++++++++++++++++++++++++++++

* `Create distorted maps <http://plugins.qgis.org/plugins/cartogram/>`_, where areas of each polygon represents a variable in your data. An example:

.. figure:: https://raw.githubusercontent.com/informeren/qgis-cartogram/develop/assets/cartogram.png
   :width: 400px

.. _QGIS: http://www.qgis.org/
.. _PostGIS: http://postgis.net/
.. _OpenGeospatialConsortium: http://www.opengeospatial.org/
