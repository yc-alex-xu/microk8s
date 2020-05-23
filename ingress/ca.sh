#!/bin/sh
openssl genrsa -out dashboard.key 2048
openssl req  -new -key dashboard.key -out dashboard.csr 
openssl x509 -req -in dashboard.csr -signkey tls.key -out dashboard.crt
openssl x509 -in dashboard.crt -text -noout
