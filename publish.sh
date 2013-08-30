#!/bin/sh

read -p "Do you wish to update the CVs? [Y/n]" choice1
case "$choice1" in 
  y|Y ) echo "Updating CVs";make cv;;
  * ) echo "Skipping compilation of CVs";;
esac

touch *.rst
#make gettext
#make compile_messages
#make merge_messages
#check if translations are ok

echo "Number of unfinished strings"
grep -c  unfinished translated/*/*.po
echo "Total unfinished strings"
grep -l unfinished translated/*/*.po | wc

echo "Number of untranslated strings"
grep -c \"\" translated/*/*.po
echo "Total untranslated strings"
grep -l \"\" translated/*/*.po | wc

read -p "Are you sure you want to publish the website anyway? [Y/n]" choice2
case "$choice2" in 
  y|Y ) echo "Publishing website";make html;;
  * ) echo "Messages compiled, site not published";;
esac
