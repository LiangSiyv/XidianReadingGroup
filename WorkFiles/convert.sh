if [ ! -d converted  ];then
  mkdir converted
else
  echo dir exist
fi

for x in *.jpg; do
    convert -sample 25% "$x" "converted/${x%.JPG}_converted.jpg"
#    rm "$x"
done
