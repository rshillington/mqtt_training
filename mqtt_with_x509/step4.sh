echo "Enable mTLS connections"

echo "launch with the these environment variables set, and this folder mapped to /opt/emqx/etc/certs"

docker run \
--env-file config_overrides.env \
-d \
--name mybroker \
--rm \
-p 8883:8883 \
-p 18083:18083 \
-v "$(pwd):/opt/etc/certs" \
emqx/emqx:latest
