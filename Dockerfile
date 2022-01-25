FROM python:3.10-slim

LABEL maintainer="mrsolairen@outlook.com"
LABEL official_documentation="https://www.linode.com/products/cli/"
LABEL official_repository="https://github.com/linode/linode-cli"

# Create folder and copy requirements.txt
RUN mkdir /packages
COPY requirements.txt /packages/
RUN pip3 install -r /packages/requirements.txt

# Remove folder
RUN rm -rf /packages

# Set workdir
WORKDIR /home/linode

# Run Linode-CLI
ENTRYPOINT [ "linode-cli" ]
CMD [ "--help" ]
