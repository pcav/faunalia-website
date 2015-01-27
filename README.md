faunalia
========

Faunalia website

* to compile it, first install:

  * pip install python-pip
  * pip install sphinx_bootstrap_theme

* Customized layout can be edited in _templates/layout.html
* css can be edited in _static/faunalia.css
* beware: images in css are not copied during ``make``; add them to `dummy.rst`
* navbars should be added in conf.py for individual pages where needed
* further formatting can be done with the .. cssclass:: directive, see http://ryan-roemer.github.io/sphinx-bootstrap-theme/examples

Thanks Ryan Roemer and Russell Sim for http://ryan-roemer.github.io/sphinx-bootstrap-theme/
