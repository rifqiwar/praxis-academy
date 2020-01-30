echo "Enter username"
read username
echo "Enter password"
read password

if [[ ( $username == "admin" && $password == "1111" ) ]]; then
echo "valid user"
else
echo "invalid user"
fi
