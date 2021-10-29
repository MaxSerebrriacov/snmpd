
HOST=192.168.60.234

OID=1.3.6.1.4.1.2021.4.11.0
OIDdf=1.3.6.1.4.1.2021.9.1.6.1
OIDswap=1.3.6.1.4.1.2021.4.3.0
OIDproc=1.3.6.1.4.1.2021.10.1.3.1
OIDnet=1.3.6.1.2.1.2.2.1.2

VAL=$(snmpget -v 2c -Ovq -c system $HOST $OID)
echo "free memory: ${VAL} MB"

VAL=$(snmpwalk -v 2c -Ovq -c net $HOST $OIDnet)
echo "List name of network: ${VAL}"

VAL=$(snmpget -v 2c -Ovq -c system $HOST $OIDproc)
echo "Proc Load: ${VAL}"

VAL=$(snmpget -v 2c -Ovq -c system $HOST $OIDswap)
echo "swap memory: ${VAL} MB"

VAL=$(snmpget -v 2c -Ovq -c system $HOST $OIDdf)
echo "storage: ${VAL} MB"

