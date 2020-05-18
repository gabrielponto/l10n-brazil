FROM odoo:10

LABEL maintainer "Gabriel Oliveira <admin@oliveiradigital.com.br>"

RUN mkdir /addons-br
COPY . /addons-br

RUN cd /addons-br && pip install requirements.txt