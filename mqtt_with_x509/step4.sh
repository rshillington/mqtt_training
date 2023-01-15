docker run \
--env-file config_overrides.env \
--name mybroker \
--rm \
-p 8883:8883 \
-p 18083:18083 \
-v "$(pwd):/opt/emqx/etc/certs" \
emqx/emqx:latest
