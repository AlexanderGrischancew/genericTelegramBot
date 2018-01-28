#!/bin/bash
#------------------------------------------------------------------
#Send a text message via your telegramm bot to one or multiple clients.
#------------------------------------------------------------------

#Your bot-token:
declare -r botToken=""
#Your pathe to the txt file containing the ids of the clients.
declare -r idsPath="ids.txt"

#the text message
text=""

#read ids of clients from file at idsPath
chatId=$(<$idsPath)
#seperate ids, save into array:
IFS=' ' read -r -a chatIdArray <<< "$chatId"

#send text to each client
for Id in ${chatIdArray[@]}
do
#>/dev/null voids the output so its not shown in the console.
curl -s -X POST https://api.telegram.org/bot$botToken/sendMessage -d text="$text" -d chat_id=$Id >/dev/null
done
#--------------------------------------------------------------------

