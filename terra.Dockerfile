FROM  alpine
RUN wget -O /tmp/terraform.zip https://releases.hashicorp.com/terraform/1.0.5/terraform_1.0.5_linux_amd64.zip
RUN unzip /tmp/terraform.zip -d /
RUN apk add --no-cache ca-certificates curl
ENTRYPOINT [ "/terraform" ]