FROM odoo:8

LABEL maintainer "Gabriel Oliveira <admin@oliveiradigital.com.br>"

USER root

RUN apt-get update && apt-get install git python-setuptools python-pip node-less locales -y
RUN pip install pip --upgrade

RUN mkdir /addons-br

USER odoo
COPY . /addons-br

USER root
RUN cd /addons-br && pip install -r requirements.txt

# Install pt-br locale
RUN sed -i -e 's/# pt_BR.UTF-8 UTF-8/pt_BR.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen && \
    update-locale

RUN apt-get remove git -y && apt-get clean

USER odoo