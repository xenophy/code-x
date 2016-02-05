/* vim: set expandtab tabstop=4 shiftwidth=4 softtabstop=4: */

// {{{ Login.view.main.Main

/**
 * Login.view.main.Main
 *
 * Copyright (c) 2016 Xenophy.CO.,LTD All rights Reserved.
 * http://www.xenophy.com
 */
Ext.define('Login.view.main.Main', {

    // {{{ extend

    extend: 'Ext.container.Container',

    // }}}
    // {{{ xtype

    xtype: 'app-main',

    // }}}
    // {{{ requires

    requires: [
        'Ext.plugin.Viewport',
        'Ext.window.MessageBox',

        'Login.view.main.MainController',
        'Login.view.main.Form'
    ],

    // }}}
    // {{{ layout

    layout: {
        type: 'hbox',
        align: 'stretch'
    },

    // }}}
    // {{{ controller

    controller: 'main',

    // }}}
    // {{{ defaults

    defaults: {
        xtype: 'container'
    },

    // }}}
    // {{{ items

    items: [{

        // spacer
        flex: 1

    }, {

        // defaults
        defaults: {

            // xtype
            xtype: 'container'
        },

        // layout
        layout: {

            // type
            type: 'vbox',

            // align
            align: 'stretch'

        },

        // items
        items: [{

            // spacer
            flex: 1

        }, {

            // xtype
            xtype: 'mainform'

        }, {

            // spacer
            flex: 1

        }]

    }, {

        // spacer
        flex: 1

    }]

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
