FROM ubuntu:18.04

ARG ARCH_AMD64

RUN apt-get -qq update \
  && apt-get install -qq --yes --no-install-recommends sendemail:${ARCH_AMD64} \
     libio-socket-ssl-perl \
     libnet-ssleay-perl \
  && apt-get -qq clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
  && sed -i "1933s/.*/if (\! IO::Socket::SSL->start_SSL(\$SERVER, SSL_version => \'SSLv23:\!SSLv2\', SSL_verify_mode => 0)) {/" /usr/bin/sendEmail

CMD ["/bin/bash"]