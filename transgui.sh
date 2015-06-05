
#!/bin/sh
#Translation from command line English to Yoruba

gui=$(zenity --entry --title="English to Yoruba Translator" --text="Enter word")
if [ $# ]
then
    var=$1 
    check=$(grep -iwnm 1 $gui en.txt | sed -n 's/^\([0-9]*\)[:].*/\1/p')
  

    if [ $check ]
    then 
        varentered=`sed "${check}q;d" yu.txt`
        zenity --info --text  "Yoruba Translation: \"$var\" in Yoruba: \"$varentered\""

    else
         zenity --info --text "Phrase/word not available in dictionary"
    fi 

else
    echo :#
fi
