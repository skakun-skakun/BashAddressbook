#!/usr/bin/env bash

read -r action

case $action in
  add)
    echo "Enter the name: "
    read name
    echo "Enter the phone number: "
    read phoneNumber
    echo "Enter the email: "
    read email
    echo "$name;$phoneNumber;$email" >> db.txt
    ;;
  search)
    echo "Enter a string that can identify a user (name/phone/email)"
    read val
    IFS=';'
    while read -ra line; do
      for i in "${line[@]}"; do
        if [[ "$i" == "$val" ]]
        then
          echo "${line[0]} ${line[1]} ${line[2]}"
          break
        fi
      done
    done < db.txt
    ;;
  remove)
    echo "Enter a string that can identify a user (name/phone/email)"
    read val
    IFS=';'
    while read -ra line; do
      for i in "${line[@]}"; do
        if [[ "$i" == "$val" ]]
        then
          
          break
        fi
      done
    done < db.txt
    ;;
  *)
    ;;
esac
