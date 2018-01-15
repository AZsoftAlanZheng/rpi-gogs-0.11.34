FROM hypriot/rpi-gogs-raspbian

MAINTAINER AZsoftAlanZheng "A0955857152@gmail.com"

RUN rm -rf /gogits/templates
ADD ./gogs/ /gogits/

EXPOSE 22
EXPOSE 3000
ENTRYPOINT []
CMD ["./start.sh"]
