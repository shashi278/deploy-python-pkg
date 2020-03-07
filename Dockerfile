
FROM python:3.7-alpine
LABEL maintainer.name="Shashi Ranjan" \
      maintainer.email="shashiranjankv@gmail.com" \
      repository.ulr="https://github.com/shashi278/deploy-python-pkg"
      
RUN apk update && apk --no-cache add gnupg bash
RUN apk update \
  && apk --no-cache add --virtual .build-deps gcc musl-dev libffi-dev openssl-dev \
  && apk del libressl-dev \
  && pip install -U --no-cache-dir twine \
  && apk del .build-deps

COPY entrypoint.sh .
RUN chmod +x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
