<?php

// {{{ Direct_Login

/**
 * Direct_Login
 *
 * Copyright (c) 2016 Xenophy.CO.,LTD All rights Reserved.
 * http://www.xenophy.com
 */
class Direct_Login {

    /**
     * Authentication
     *
     * @param $user
     * @param $password
     * @remotable
     * @return array
     */
    function auth($user, $password) {

        $result = array('success' => false);

        // 認証処理
        if (!Auth::login($user, $password)) {
            $result['success'] = false;
        } else {
            $result['success'] = true;
        }

        return $result;
    }

}

// }}}

/*
 * Local variables:
 * tab-width: 4
 * c-basic-offset: 4
 * c-hanging-comment-ender-p: nil
 * End:
 */
