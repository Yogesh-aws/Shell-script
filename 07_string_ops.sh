

var="Hey Buddy, How are You"

echo " $var "

length=${#var}

echo " Length of above string is: $length "

upper=${var^^}

echo " In upper case:		$upper "

lower=${var,,}

echo " In liower case:		$lower "

echo " slicing: ${var:6:11} "

echo "To replace: ${var/Buddy/ramu}"


