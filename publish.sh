#!/bin/sh

read -p "Do you wish to update the CVs? [y/n]" choice1
case "$choice1" in 
  y|Y ) echo "Updating CVs";make cv;;
  * ) echo "Skipping compilation of CVs";;
esac

touch *.rst
make gettext
make compile_messages
make merge_messages
#check if translations are ok
# requires translate-toolkit
# 1 untranslated string is added by gettext, we have to study how to get rid of it
# now it seem mysteriously fixed, removing " | grep -v 1u"
echo ""
echo "**Statistics of untranslated (u) and fuzzy (f) strings**"

pocount --incomplete --short-strings translated/*/*.po

read -p "Are you sure you want to publish the website anyway? [y/n]" choice2
case "$choice2" in 
  y|Y ) echo "Publishing website";make html;;
  * ) echo "Messages compiled, site not published";;
esac
