## testowanie github connection
## testowanie podpisu gpg2
FROM ubuntu:latest

USER 0

RUN apt-get update && apt-get upgrade -y && apt-get install -y curl bash
COPY files/getmac.sh  /getmac.sh
USER 1000
ENTRYPOINT ["/getmac.sh"]
