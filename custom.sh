
HOST=192.168.60.216

OID2=1.3.6.1.4.1.8072.1.3.2.3.1.1.3.157.151.144

VAL=$(snmpget -v 2c -Ovq -c pg $HOST $OID2)
echo "now: ${VAL}"


OID2=1.3.6.1.4.1.8072.1.3.2.3.1.1.4.156.141.155.145

VAL=$(snmpget -v 2c -Ovq -c pg $HOST $OID2)
echo "now: ${VAL}"


OID2=1.3.6.1.4.1.8072.1.3.2.3.1.1.6.162.145.164.165.162.156

VAL=$(snmpget -v 2c -Ovq -c pg $HOST $OID2)
echo "now: ${VAL}"


OID2=1.3.6.1.4.1.8072.1.3.2.3.1.1.3.110.111.119

VAL=$(snmpget -v 2c -Ovq -c now $HOST $OID2)
echo "now: ${VAL}"
