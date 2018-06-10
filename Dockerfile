FROM frolvlad/alpine-python3
COPY test.py /
COPY get_details.sh /
CMD ["/test.py"]
