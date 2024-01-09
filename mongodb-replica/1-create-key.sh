#!/bin/bash

openssl rand -base64 741 > mongo-keyfile
chmod 600 mongo-keyfile

chmod +x 2-compose.sh
chmod +x 3-create-rs.sh