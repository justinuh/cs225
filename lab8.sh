#! /bin/bash 





tail -1 /var/share/CS225/addresses.csv

LINE=$(tail -1 /var/share/CS225/addresses.csv)

FNAME=${LINE%%,*}
LINE=${LINE#*,}

LNAME=${LINE%%,*}
LINE=${LINE#*,}

COMPANY=${LINE%%,*}
LINE=${LINE#*,}

STREET=${LINE%%,*}
LINE=${LINE#*,}

CITY=${LINE%%,*}
LINE=${LINE#*,}

STATE=${LINE%%,*}
LINE=${LINE#*,}

STATEPOSTALCODE=${LINE%%,*}
LINE=${LINE#*,}

ZIP=${LINE%%,*}
LINE=${LINE#*,}

HPHONE=${LINE%%,*}
LINE=${LINE#*,}

WPHONE=${LINE%%,*}
LINE=${LINE#*,}

EMAIL=${LINE%%,*}
LINE=${LINE#*,}

WEBURL=${LINE%%,*}
LINE=${LINE#*,} 

echo "Testing: $FNAME $LNAME lives in $STATE and works at $COMPANY. His email is $EMAIL. He currently lives on $STREET $CITY $STATE $ZIP."

