if [ -z "$DOMAINS" ]; then
  echo "DOMAINS must be set"
  exit 1
fi

if [ -z "$TOKEN" ]; then
  echo "TOKEN must be set"
  exit 1
fi

export UPDATE_INTERVAL="${UPDATE_INTERVAL-1m}"

echo "Starting duckdns script: domains=$DOMAINS, update_interval=$UPDATE_INTERVAL"

while true; do
  curl -si "https://www.duckdns.org/update?domains=$DOMAINS&token=$TOKEN&verbose=true"
  echo -e "\n"
  sleep $UPDATE_INTERVAL
done
