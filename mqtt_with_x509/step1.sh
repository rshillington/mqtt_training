echo "Generating a self-signed CA certificate"

echo "first create a private key for the CA (ca.key)"
openssl genrsa -out ca.key 2048

echo "next create new new cert with the private key (ca.pem)"
openssl req -x509 -new -nodes -key ca.key -sha256 -days 3650 -config ca_openssl.cnf -out ca.pem
