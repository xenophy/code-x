/* vim: set expandtab tabstop=4 shiftwidth=4 softtabstop=4: */

// {{{ Login.view.main.Form

/**
 * Login.view.main.Form
 *
 * Copyright (c) 2016 Xenophy.CO.,LTD All rights Reserved.
 * http://www.xenophy.com
 */
Ext.define('Login.view.main.Form', {

    // {{{ extend

    extend: 'Ext.form.Panel',

    // }}}
    // {{{ xtype

    xtype: 'mainform',

    // }}}
    // {{{ requires

    requires: [
    ],

    // }}}
    // {{{ listeners

    listeners: {
    },

    // }}}
    // {{{ bodyPadding

    bodyPadding: "20 20 20 20",

    // }}}
    // {{{ items

    items: [{

        // xtype
        xtype: 'container',

        // width
        width: 250,

        // layout
        layout: {

            // type
            type: 'vbox',

            // align
            align: 'stretch'
        },

        // defaults
        defaults: {

            // xtype
            xtype: 'container'

        },

        // items
        items: [{

            // padding
            padding: "20 59 20 59",

            // height
            height: 210,

            // items
            items: [{

                // xtype
                xtype: 'image',

                // src
                src: 'resources/images/logo.png'

            }]

        }, {

            // flex
            flex: 1,

            // layout
            layout: 'anchor',

            // defaults
            defaults: {

                // xtype
                xtype: 'textfield',

                // anchor
                anchor: '100%'

            },

            // items
            items: [{

                // name
                name: 'username',

                // emptyText
                emptyText: '\uf007  メールアドレスまたはユーザーID'

            }, {

                // name
                name: 'password',

                // inputType
                inputType: 'password',

                // emptyText
                emptyText: '\uf023  パスワード'

            }, {

                // xtype
                xtype: 'button',

                // margin
                margin: "20 0 10 0",

                // text
                text: 'ログイン',

                // listeners
                listeners: {
                    click: 'onLogin'
                }

            }]

        }]

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
