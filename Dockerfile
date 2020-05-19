FROM odoo:10

LABEL maintainer "Gabriel Oliveira <admin@oliveiradigital.com.br>"

USER root

RUN mkdir /addons-br

USER odoo
COPY . /addons-br

RUN cd /addons-br && pip install requirements.txt