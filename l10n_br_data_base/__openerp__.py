# -*- coding: utf-8 -*-
# Copyright (C) 2009 - TODAY Renato Lima - Akretion
# License AGPL-3 - See http://www.gnu.org/licenses/agpl-3.0.html

{
    'name': 'Brazilian Localisation Data Extension for Base',
    'license': 'AGPL-3',
    'author': 'Akretion, Odoo Community Association (OCA)',
    'version': '8.0.1.0.1',
    'depends': [
        'l10n_br_base',
        # TODO - https://github.com/OCA/l10n-brazil/issues/588
        'l10n_br_account_banking_payment',
    ],
    'data': [
        'data/res.bank.csv',
    ],
    'demo': [],
    'category': 'Localisation',
    'installable': True,
    'auto_install': True,
}
