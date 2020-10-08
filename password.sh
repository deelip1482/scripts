#!/bin/bash


unset password
prompt_login()
{
   echo -n "SSO email-id: "
   read sso_email
   prompt="Enter Password:"
   while IFS= read -p "$prompt" -r -s -n 1 char
   do
       if [[ $char == $'\0' ]]
         then
            break
       fi
       prompt='*'
       sso_password+="$char"
   done

   echo
}

echo "main started"
prompt_login;
echo "Email=$sso_email"
echo "Password=$sso_password"

exit 0

