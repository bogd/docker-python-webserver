FROM alpine

RUN apk add python3

ENV COLOR="#0000FF"

COPY test.py /

COPY get_details.sh /

EXPOSE 8081/tcp

CMD ["/test.py"]
