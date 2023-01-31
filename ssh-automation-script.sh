#!/usr/bin/expect -f

# Define the variables for remote host and username
set HOST hostname
set USER user

# Enter the password for the remote machine
set PASSWORD password@123

# Log into the remote machine
spawn ssh $USER@$HOST

# Wait for the password prompt and send the password
expect "password:"
send "$PASSWORD\r"

# Wait for the shell prompt and interact with it
interact
