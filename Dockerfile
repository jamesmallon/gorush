FROM plugins/base:multiarch

LABEL org.label-schema.version=latest
LABEL org.label-schema.vcs-url="https://github.com/axiomzen/gorush.git"
LABEL org.label-schema.name="Gorush"
LABEL org.label-schema.vendor="Bo-Yi Wu"
LABEL org.label-schema.schema-version="1.0"
LABEL maintainer="Bo-Yi Wi <appleboy.tw@gmail.com>"

ADD config/config.yml /
ADD bin/gorush /

EXPOSE 8088
ENTRYPOINT ["/gorush"]
CMD ["-c", "config.yml"]
