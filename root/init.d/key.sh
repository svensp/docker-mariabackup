#!/bin/sh

if [ ! -d /root/.ssh ] ; then
	mkdir -p /root/.ssh
	chmod 700 /root/.ssh
fi

if [ ! -z "${KEY}" ] ; then
	cat > /root/.ssh/id_rsa <<EOF
${KEY}
EOF
	chmod 600 /root/.ssh/id_rsa
fi
