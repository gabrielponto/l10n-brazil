FROM odoo:10

LABEL maintainer "Gabriel Oliveira <admin@oliveiradigital.com.br>"

USER root

RUN apt-get update && apt-get install git python2-setuptools python2-pip -y

RUN mkdir /addons-br

USER odoo
COPY . /addons-br

USER root
RUN cd /addons-br && pip install -r requirements.txt

RUN apt-get remove git -y

USER odoo