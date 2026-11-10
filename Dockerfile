FROM node:24-bookworm-slim
WORKDIR /app
COPY Memgraph-Render-Source.zip /tmp/source.zip
RUN apt-get update \
    && apt-get install -y --no-install-recommends unzip \
    && unzip -q /tmp/source.zip -d /tmp \
    && cp -a /tmp/memgraph-render-source/. /app/ \
    && rm -rf /tmp/source.zip /tmp/memgraph-render-source /var/lib/apt/lists/*
ENV HOST=0.0.0.0
ENV DATA_DIR=/var/data
ENV ALLOW_LOCAL_DEMO=0
CMD ["npm", "start"]
