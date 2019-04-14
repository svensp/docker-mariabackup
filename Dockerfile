FROM svensp/anacron

RUN apt-get update \
	&& apt-get -y install gnupg2 software-properties-common \
	&& rm -Rf /var/lib/apt/lists/*

COPY root/ /

RUN apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db \
	&& apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8 \
	&& apt-get update \
	&& apt-get -y install mariadb-backup \
	&& rm -Rf /var/lib/apt/lists/*
