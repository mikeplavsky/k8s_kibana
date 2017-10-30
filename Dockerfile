FROM kibana:4.6.6

RUN apt-get update
RUN apt-get install -y curl 

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl

RUN chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl

