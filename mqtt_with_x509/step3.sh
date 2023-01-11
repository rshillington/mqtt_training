echo "Generating a client certificate"

echo "first create a private key for the client (client.key)"
openssl genrsa -out client.key 2048

echo "then create a new certificate signing request  "
openssl req -new -key client.key -out client.csr -config client_openssl.cnf

echo "finally use the CA cert + the client CSR to generate an x.509 certificate for the client (client.pem)"

openssl x509 -req -days 3650 -in client.csr -CA ca.pem -CAkey ca.key -CAcreateserial -out client.pem

