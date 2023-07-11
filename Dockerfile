FROM python:3.11.3

# install os modules
RUN apt update -y && \
    apt install -y telnet nano && \
    rm -rf /var/lib/apt/lists/* 

#copy the cource code
RUN mkdir -p /data-copier
COPY app /data-copier/app
COPY requirements.txt /data-copier

#install aplication dependencies 
RUN pip install -r /data-copier/requirements.txt