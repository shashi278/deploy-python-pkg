
FROM python:3.7-alpine
LABEL maintainer.name="Shashi Ranjan" \
      maintainer.email="shashiranjankv@gmail.com" \
      repository.ulr="https://github.com/shashi278/deploy-python-pkg"


COPY entrypoint.sh .

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
