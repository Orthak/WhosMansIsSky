###
# Build Stage
####
FROM fpco/stack-build:latest as build

ENV LANG en_US.UTF-8
ENV PATH /root/.local/bin:$PATH

RUN mkdir -p /src
WORKDIR /src

COPY ./ ./
RUN stack setup && stack build

###
# Runtime
####
FROM fpco/stack-run:latest

ENV LANG en_US.UTF-8

RUN mkdir -p /app
WORKDIR /app

COPY --from=build /root/.local/bin/wmis /app/wmis

RUN useradd app
USER app

ENTRYPOINT []
CMD [ "/app/wmis" ]
