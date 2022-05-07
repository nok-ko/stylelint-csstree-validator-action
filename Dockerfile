FROM exelban/baseimage:node-latest

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN npm install -g stylelint-csstree-validator

ENTRYPOINT ["/entrypoint.sh"]
