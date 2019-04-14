#!/bin/sh

if [ ! -z "${KEY}" ] ; then
	cat > /root/.ssh/id_rsa <<EOF
${KEY}
EOF
fi
