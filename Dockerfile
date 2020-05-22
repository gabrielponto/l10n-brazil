FROM odoo:10

LABEL maintainer "Gabriel Oliveira <admin@oliveiradigital.com.br>"

USER root

RUN apt-get update && apt-get install git python-setuptools python-pip -y
RUN pip install pip --upgrade

RUN mkdir /addons-br

USER odoo
COPY . /addons-br

USER root
RUN cd /addons-br && pip install -r requirements.txt

RUN apt-get remove git -y

# Install pt-br locale
RUN locale-gen pt_BR
RUN locale-gen pt_BR.UTF-8

RUN update-locale

USER odoo