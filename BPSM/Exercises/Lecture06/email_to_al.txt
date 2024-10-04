DATE=$(date)
git log | grep "Date:" > message_to_al
mail -s "$USER $HOSTNAME $DATE" < message_to_al aivens2@ed.ac.uk
cat message_to_al
