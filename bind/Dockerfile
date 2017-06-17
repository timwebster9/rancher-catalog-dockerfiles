FROM ubuntu:16.04

RUN apt-get update \
  && apt-get install -y bind9 bind9utils bind9-doc

#COPY bind/ /etc/bind/

COPY bind/named.conf.options \
     bind/named.conf.local \
     bind/zones/ /etc/bind/

COPY cmd.sh /cmd.sh

RUN  chmod +x /cmd.sh \
  && touch /var/log/query.log \
  && chown bind:bind /var/log/query.log \
  && chown -R bind:bind /etc/bind

CMD ["./cmd.sh"]