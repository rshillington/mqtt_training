echo "Generating a server certificate"

echo "first create a private key for the server (emqx.key)"
openssl genrsa -out emqx.key 2048

echo "then create a new certificate signing request with the server_openssl.cnf file and the private key of the server"
openssl req -new -key ./emqx.key -config server_openssl.cnf -out emqx.csr

echo "finally use the CA cert + the csr to generate an x.509 certificate for the server (emqx.pem)"
openssl x509 -req -in ./emqx.csr -CA ca.pem -CAkey ca.key -CAcreateserial \
    -out emqx.pem -days 3650 -sha256 -extensions v3_req -extfile server_openssl.cnf


