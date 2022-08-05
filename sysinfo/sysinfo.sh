PEICHER=$(free -h | grep Speicher)

echo CPU Name: $(cat /proc/cpuinfo | grep name | tr -d " " | uniq | cut -d ":" -f 2)
echo Gesamter/freier Arbeitsspeicher: $( echo $SPEICHER | cut -d " " -f 2,4)
echo Größe/Verwendeter Speicher der /home Partition: $(df -h / | grep / | tr -s " " | cut -d " " -f 2,4)
echo Anzahl laufender Prozesse: $(ps | grep / |wc -l)
echo OS-Name: $(uname)
