.. meta::
   :description: DataPlotly plugin per QGIS3
   :keywords: GIS, QGIS, D3, plots, python, plugin

DataPlotly un plugin per creare grafici interattivi in stile D3
-------------------------------------------------------------------------------
`DataPlotly <https://github.com/ghtmtt/DataPlotly>`_ è un plugin per QGIS 3 che
permette la creazione di grafici in stile D3.

I grafici sono completamente interattivi ed *interagiscono* con gli elementi della
mappa: cliccando o selezionando un elemento del grafico i relativi elementi della
mappa vengono selezionati.

DataPlotly permette di creare molti tipi di grafici diversi con enorme semplicità:
ogni tipologia di grafico ha moltissime personalizzazioni disponibili che arricchiscono
il grafico in molti modi diversi.

Oltre alla possibilità di creare un grafico singolo si possono sovrapporre grafici
(anche ti tipo diverso) oppure si può decidere di collocare i grafici in una vera
e propria griglia.

DataPlotly utilizza la libreria Python `Plotly <https://plot.ly/>`_: quest'ultima
è una libreria in Javascript completa e costantemente sviluppata estendibile anche
con altri linguaggi di programmazione (come Python, R, ecc.).

Ogni grafico è accompagnato dal codice *grezzo* che lo compone: in questo modo
l'utente può facilmente inserire il grafico in una cornice html.

Inoltre si possono salvare i grafici come immagini statiche (``png``) o come file
``html`` che mantengono la interattività e sono quindi facilmente interrogabili.


Supporto multilingue
--------------------
DataPlotly è stato concepito per poter essere tradotto in altre lingue. Sia l'interfaccia
utente che il manuale di utilizzo sono disponibili sul portale di traduzione
`Transifex <>`_ dove è possibile richiedere la propria lingua e tradurre DataPlotly.

Attualmente il plugin è disponibilie in:

* inglese
* italiano
* olandese
* svedese
* francese


Parlano di DataPlotly
---------------------
DataPlotly ha riscosso un grande successo fra gli utenti e gli sviluppatori di
QGIS. Alla data |today| il plugin è stato conta circa 2000 download e diverse
citazioni in siti e blog:

https://anitagraser.com/2017/12/06/data-exploration-with-data-plotly-for-qgis3/
http://millermountain.com/geospatialblog/2017/12/18/qgis-data-plotly/
https://geosupportsystem.wordpress.com/2017/12/13/diagram-i-qgis-3/
https://www.youtube.com/watch?v=SxtVAtZ4bjA&feature=youtu.be


Trucchi e consigli
------------------
Il plugin supporta nativamente tutte le funzionalità di QGIS (utilizzo di espressioni,
stesse finestre di dialogo per la scelta dei colori, ecc..). Di seguito qualche
trucchetto per un'esperienza ancora migliore di DataPlotly.
