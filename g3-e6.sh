history | awk '{ print $2 }' | sort | uniq -c | sort -nr | head | awk '{ print "Comando: "$2", Ejecuciones: "$1 }'
