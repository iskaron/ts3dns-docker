FROM iskaron/ts3:3.13.5
MAINTAINER Iskaron <mail@iskaron.de>

VOLUME [ "/config" ]

RUN ln -sf /config/tsdns_settings.ini $TS_DIR/tsdns/tsdns_settings.ini

WORKDIR $TS_DIR/tsdns

EXPOSE 41144

USER teamspeak
CMD ["./tsdnsserver"]

