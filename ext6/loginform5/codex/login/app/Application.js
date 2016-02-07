/* vim: set expandtab tabstop=4 shiftwidth=4 softtabstop=4: */

// {{{ Login.Application

/**
 * Login.Application
 *
 * Copyright (c) 2016 Xenophy.CO.,LTD All rights Reserved.
 * http://www.xenophy.com
 */
Ext.define('Login.Application', {

    // {{{ extend

    extend: 'Ext.app.Application',

    // }}}
    // {{{ name

    name: 'Login',

    // }}}
    // {{{ requires

    requires: [
        'Ext.direct.*'
    ],

    // }}}
    // {{{ stores

    stores: [
        // TODO: add global / shared stores here
    ],

    // }}}
    // {{{ launch

    launch: function () {

        // Ext.Directプロバイダー追加
        Ext.direct.Manager.addProvider(Ext.REMOTING_API);

    },

    // }}}
    // {{{ onAppUpdate

    onAppUpdate: function () {

        Ext.Msg.confirm('Application Update', 'This application has an update, reload?',
            function (choice) {
                if (choice === 'yes') {
                    window.location.reload();
                }
            }
        );

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
