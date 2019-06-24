FROM neo4j:latest

ENV APOC_VERSION 3.5.0.4
ENV APOC_URI https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/download/${APOC_VERSION}/apoc-${APOC_VERSION}-all.jar

RUN apt update -qq \
    && apt install -yqq wget \
    && wget -qq $APOC_URI \
    && mv apoc-${APOC_VERSION}-all.jar plugins/apoc-${APOC_VERSION}-all.jar

EXPOSE 7474 7473 7687

CMD ["neo4j"]
