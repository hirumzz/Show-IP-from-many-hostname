if [[ "$1" != "" ]]; then
  host=( "$@" )
  countA=${#host[@]}
  echo -e
  for (( c=0; c<$countA; c++ ))
  do
          d=$((c+1))
          echo -n "$d "
          ping -c1 ${host[$c]} | awk '{print $2,$3}' | sed -n 1p
          echo -e
  done
else
        echo ""
        echo "what hostname? please type the hostname"
        echo ""
        echo "Example: "
        echo ""
        echo "showIP.sh example.com example2.com etc"
        echo ""
fi;
