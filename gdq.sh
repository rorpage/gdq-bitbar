#!/bin/bash
game=$(curl -s https://api.twitch.tv/kraken/channels/gamesdonequick -H 'client-id:jzkbprff40iqj646a697cyrvl0zt2m6' | /usr/local/bin/jq -r '.game')
donations=$(curl -s https://gamesdonequick.com/tracker/donations/agdq2019 | /usr/local/bin/pup 'h2.text-center small text{}')

echo "$game | color=purple"
echo "---"
echo "Games Done Quick | href=https://gamesdonequick.com"
echo "---"
echo "Watch on Twitch | href=https://twitch.tv/gamesdonequick"
echo "Schedule | href=https://gamesdonequick.com/schedule"
echo "---"
echo $donations
exit 0
