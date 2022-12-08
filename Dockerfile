FROM alpine:3.17.0
RUN apk --no-cache add ca-certificates git && \
    addgroup -S trivy && adduser -S trivy -G trivy
COPY trivy /usr/local/bin/trivy
COPY contrib/*.tpl contrib/
USER trivy
ENTRYPOINT ["trivy"]
