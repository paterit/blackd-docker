ARG PYTHON_VERSION=3-alpine

FROM python:${PYTHON_VERSION}

# dependencies you need in your final image
RUN apk update && \
    apk add --no-cache \
        # good to have bash available
        bash

# use archives from /weels dir
RUN pip install -U pip \
       && pip install black[d]

EXPOSE 45484

CMD ["blackd","--bind-port=45484","--bind-host=0.0.0.0"]