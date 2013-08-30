#!/bin/sh

##UNFINISHED, JUST A DRAFT

#optional
read -r -p "Do you want to update the CVs? [Y/n] " prompt
#if [[ $response =~ ^([yY][sS]|)$ ]]
#if [[ $prompt =~ [yY] ]]

#read -r -p "Are you sure? [Y/n]" response
#response=${response,,}    # tolower
#if [[ $response =~ ^(yes|y| ) ]]

#then
#echo "Your reply to CV update: " $response
#    make cv
#else
#fi

while true; do
    read -p "Do you wish to update the CVs? [Y/n]" yn
    case $yn in
#        [Yy]* ) make cv; break;;
        [Yy]* ) echo "Your reply to CV update: " $yn
        [Nn]* ) echo "Skipping compilation of CVs"
        * ) echo "Please answer yes or no.";;
    esac
done

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

read -p "Are you sure you want to publish the website anyway? [Y/n] " prompt
#response=${response,,}    # tolower
#if [[ $response =~ ^(yes|y)$ ]]
if [ $prompt =~ [yY] ]
then
    make html
else
    echo "Messages compiled, site not published"
fi
