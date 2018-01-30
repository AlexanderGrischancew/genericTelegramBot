# genericTelegramBot
Structure for getting id from clients texting the bot in the last 24h and sending a message to all clients ever to text the bot.

## Usage

### Get new ids
In getIds.sh  
```declare -r botToken=""``` declare your bot token here, be carefull to not make it public.  
```declare -r idsPath="ids.txt"``` here you can change the file where the ids will be stored, default is "ids.txt"  

Set a cronjob to run the script every 24h or less to fetch the ids.

### Send a message
In main.sh  
```declare -r botToken=""``` declare your bot token here, be carefull to not make it public.  
```declare -r idsPath="ids.txt"``` here you can change the file where the ids will be stored, default is "ids.txt"  
```text=""``` enter your message here.  

Execute the script to send the message above to all ids stored in the declared file.
