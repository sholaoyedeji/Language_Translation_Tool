
#!/bin/sh
#Translation from command line English to Yoruba


if [ $# ]
then
    var=$1 
    check=$(grep -iwnm 1 $var en.txt | sed -n 's/^\([0-9]*\)[:].*/\1/p')
  

    if [ $check ]
    then 
        varentered=`sed "${check}q;d" yu.txt`
        echo "Yoruba Translation: \"$var\" in Yoruba: \"$varentered\""

    else
        echo "Phrase/word not available in dictionary"
    fi 

else
    echo :#
fi
