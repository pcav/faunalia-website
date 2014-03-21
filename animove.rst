.. meta::
   :description: AniMove home page
   :keywords: GIS, QGIS, kernel analyses, animal home range, R, python

AniMove - Animal Movements: A collaborative project
-------------------------------------------------------------------------------

The analysis of animal movement and ranging behaviour (including the estimation of home range size) is a complex issue. A number of programs have been written (see this web site for an obsolete and incomplete list), but all suffer from one or several limitations, including:

* limited customizability (for ad hoc analyses, change of calculation methods, etc.)
* undocumented calculation methods (crucial especially for kernel analyses)
* limited or no interaction with Geographic Information Systems (GIS)
* the need to purchase proprietary, expensive software

We believe the problem could be solved by the use of several free and open source programs, available both for GNU/Linux, Mac OSX and MS Windows operating systems. We aim at producing the most advanced software; our indicative term of reference is `Animal Movements <http://www.absc.usgs.gov/glba/gistools/animal_mvmt.htm>`_ (which requires the expensive, obsolete, and proprietary ArcView + Spatial Analyst proprietary packages).

All resulting software is and will be freely available (under GPL or similar licences).

One of the approaches used involves the use of the statistical package R_ and its extension `AdeHabitat <http://cran.r-project.org/web/packages/adehabitat/index.html>`_ by Clément Calenge.

Another approach is to use plain QGIS_ to run many useful analyses (e.g. basic statistics, Minimum Convex Polygon). Fom more advanced analyses, we have developed some *ad hoc* plugins.

Developing python plugins for QGIS is easy, cheap, and fast. Our aim is to have a toolbox in which anybody can add her/his own preferred analyses.

AniMove for QGIS
...............................................................................

*Developers*: Víctor González, Jorge Arevalo , Francesco Boccacci

It implements kernel analyses and restricted MCP in Pure Python_, without the need to install R and its libraries.

The plugin is available through the `QGIS official repository <http://plugins.qgis.org/plugins/sextante_animove/>`__.

RandomHR
...............................................................................

*Developer*: Borys Jurgiel

Given a series of polygons (home ranges) and a containing polygon (the study area), throws the polygons randomly many times (N chosen by the user) and calculates the average overlap between them.

A few notes:

* if a HR is a multipolygon, it is rotated and moved as a whole
* for very small ranges, rounding errors may cause problem; however, this is insignificant for any animal with home ranges larger then 10 m2 

The plugin is available through the `QGIS official repository <http://plugins.qgis.org/plugins/randomHR/>`__.

**Please note**: the plugin works on QGIS_ 1.8, not on 2.0. If you are interested in upgrading it, please contact us.

Triangulation
...............................................................................

*Developer*: Borys Jurgiel

It calculates the position of an animal from its bearings.

The plugin is available through the `QGIS official repository <http://plugins.qgis.org/plugins/triangulation/>`__.

**Please note**: the plugin works on QGIS_ 1.8, not on 2.0. If you are interested in upgrading it, please contact us.

More
...............................................................................

You're welcome to add your most needed plugin, either by writing it on your own, by hiring a programmer, or by donating to the project. **AniMove** and **​Faunalia** can help you.

Join the group!
...............................................................................

AniMove lives thanks to the efforts of many people, which contributed through time. Your help would therefore be much appreciated. This could be a suitable project for a MSc thesis. You can collaborate by testing the software, writing manuals and other. Please subscribe to the `mailing list <http://lists.faunalia.it/cgi-bin/mailman/listinfo/animov>`_ or write us (info@faunalia.eu) if you are interested.


**Faunalia provides ongoing support to the project**

.. _QGIS: http://www.qgis.org/
.. _Python: http://www.python.org/
.. _R: http://www.r-project.org/
