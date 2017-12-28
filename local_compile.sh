#!/bin/sh

#read -p "Do you wish to update the CVs? [y/n]" choice1
#case "$choice1" in 
#  y|Y ) echo "Updating CVs";make cv;;
#  * ) echo "Skipping compilation of CVs";;
#esac

touch *.rst
make gettext
make compile_messages
make merge_messages
read -p "Do you wish to check the links? [y/n]" choice_link
case "$choice_link" in 
  y|Y ) echo "Checking links";make linkcheck;;
  * ) echo "Skipping checking the links";;
esac

#check if translations are ok
# requires translate-toolkit
# 1 untranslated string is added by gettext, we have to study how to get rid of it
# now it seem mysteriously fixed, removing " | grep -v 1u"
echo ""
echo "**Statistics of untranslated (u) and fuzzy (f) strings**"

#pocount --incomplete --short-strings translated/*/*.po
pocount --incomplete --short-strings translated/en/*.po
pocount --incomplete --short-strings translated/fr/*.po

read -p "Are you sure you want to push the website anyway? [y/n]" choice2
case "$choice2" in
#  y|Y ) echo "Publishing website";make html&&rsync -avz --delete build/html/ test/&&cp htaccess_test test/.htaccess&&cp htpasswd_test test/.htpasswd;;
# NB: non funziona perche' make fallisce nella creazione del link
# non funziona il test
# 	test -e $(BUILDDIR)/html/pdf || ln -s /home/www/pdf $(BUILDDIR)/html/;
#originale:
  y|Y ) echo "Publishing website";make html;;
  * ) echo "Messages compiled, site not compiled";;
esac

read -p "Site published in build/html/, please check and if OK commit and push."
