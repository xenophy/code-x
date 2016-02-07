/* vim: set expandtab tabstop=4 shiftwidth=4 softtabstop=4: */

// {{{ Login.view.main.MainController

/**
 * Login.view.main.MainController
 *
 * Copyright (c) 2016 Xenophy.CO.,LTD All rights Reserved.
 * http://www.xenophy.com
 */
Ext.define('Login.view.main.MainController', {

    // {{{ extend

    extend: 'Ext.app.ViewController',

    // }}}
    // {{{ alias

    alias: 'controller.main',

    // }}}
    // {{{ onLogin

    onLogin: function () {

        var me = this,
            v;

        v = me.getView().down('mainform').getForm().getValues();

        Login.auth(v.username, v.password, function (result) {

            if (result.success === true) {

                if (location.port === "" || location.port === 80 || location.port === 443) {

                    // リダイレクト
                    location.href = '../';

                } else {

                    // リダイレクト for Sencha Cmd
                    location.href = '../front/index.php';

                }

            } else {

                // TODO: エラーメッセージ表示

            }

        });

    }

    // }}}

});

// }}}

/*
 * Local variables:
 * tab-width: 4
 * c-basic-offset: 4
 * c-hanging-comment-ender-p: nil
 * End:
 */
