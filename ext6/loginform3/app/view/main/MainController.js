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
         Ext.Msg.confirm('onLogin', 'onLoginフォームが呼び出されました。');
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
