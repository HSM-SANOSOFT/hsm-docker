FROM node:latest

RUN apt-get update && apt-get install -y \
    alien \
    libaio1 \
    unzip \
    && rm -rf /var/lib/apt/lists/*
    
RUN apt-get update && apt-get install -y bash curl && curl -1sLf \
'https://artifacts-cli.infisical.com/setup.deb.sh' \
| bash && apt-get update && apt-get install -y infisical


ADD ./Oracle-InstantClient-12.1.zip /tmp/

RUN unzip /tmp/Oracle-InstantClient-12.1.zip -d /tmp/oracle-client && \
    rm /tmp/Oracle-InstantClient-12.1.zip

RUN cd /tmp/oracle-client && \
    alien -i oracle-instantclient12.1-basic-12.1.0.2.0-1.x86_64.rpm && \
    alien -i oracle-instantclient12.1-devel-12.1.0.2.0-1.x86_64.rpm && \
    alien -i oracle-instantclient12.1-sqlplus-12.1.0.2.0-1.x86_64.rpm && \
    rm -rf /tmp/oracle-client

RUN npm install -g npm@latest
RUN npm install -g pnpm@latest

WORKDIR /app

CMD ["node"]