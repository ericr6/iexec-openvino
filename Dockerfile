FROM openvino/ubuntu18_dev:latest

MAINTAINER eric <er@iex.ec>
USER root
RUN apt-get update && apt-get install sudo

# Set the working directory to /app
WORKDIR /

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
