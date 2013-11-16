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

echo "Number of unfinished strings"
grep -c  fuzzy translated/*/*.po
echo ""
echo "Verify the above: 1 per file is normal, >1 needs a correction"
#echo "Total unfinished strings"
#grep -l fuzzy translated/*/*.po | wc
echo "Beware, untransalted strings are not taken into account"
echo "in the count above"
#echo "Number of potentially untranslated strings"
#grep -c \"\" translated/*/*.po
#echo "Total potentially untranslated strings"
#grep -l \"\" translated/*/*.po | wc

read -p "Are you sure you want to publish the website anyway? [y/n]" choice2
case "$choice2" in 
  y|Y ) echo "Publishing website";make html;;
  * ) echo "Messages compiled, site not published";;
esac
