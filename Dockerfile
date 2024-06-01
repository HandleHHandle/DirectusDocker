# syntax=docker/dockerfile:1.4
FROM directus/directus:10.11.2
USER root
RUN corepack enable \
&& corepack prepare pnpm@9.0.6 --activate \
&& chown node:node /directus
EXPOSE 8055
USER node
CMD : \
&& node /directus/cli.js bootstrap \
&& node /directus/cli.js start;
