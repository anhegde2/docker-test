# use a node base image
FROM node:7-onbuild

# set maintainer
LABEL maintainer "anhegde2@in.ibm.com"

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://10.53.20.42:8080 || exit 1

# tell docker what port to expose
EXPOSE 8080
