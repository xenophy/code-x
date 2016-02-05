<?php

namespace Fuel\Tasks;

class Setuptables
{

	/**
	 * This method gets ran when a valid method name is not used in the command.
	 *
	 * Usage (from command line):
	 *
	 * php oil r setuptables
	 *
	 * @return string
	 */
	public function run($args = NULL)
	{
		echo "\n===========================================";
		echo "\nRunning DEFAULT task [Setuptables:Run]";
		echo "\n-------------------------------------------\n\n";

		/***************************
		 Put in TASK DETAILS HERE
		 **************************/
	}



	/**
	 * This method gets ran when a valid method name is not used in the command.
	 *
	 * Usage (from command line):
	 *
	 * php oil r setuptables:index "arguments"
	 *
	 * @return string
	 */
	public function index($args = NULL)
	{
		echo "\n===========================================";
		echo "\nRunning task [Setuptables:Index]";
		echo "\n-------------------------------------------\n\n";

		/***************************
		 Put in TASK DETAILS HERE
		 **************************/

        // 初期ユーザー定義
        $init_users = array(

            // 管理画面ユーザー
            array('name' => 'codex', 'password' => '1234', 'group' => 6),

        );

        // データベース接続
		\DBUtil::set_connection(null);

        // {{{ トランケート

        $truncates = array(
            '',
            '_permissions',
            '_metadata',
            '_user_permissions',
            '_group_permissions',
            '_role_permissions'
        );

        foreach ($truncates as $truncate) {
            \DBUtil::truncate_table('users' . $truncate);
        }

        // }}}
        // {{{ 初期ユーザー追加

        foreach ($init_users as $init_user) {

            // ユーザー名
            $key = $init_user['name'];

            // パスワード
            $password = $init_user['password'];

            // メールアドレス
            $email = $key . '@xenophy.com';

            // グループ
            $group = $init_user['group'];

            // 追加
            $user = \Auth\Model\Auth_User::forge()->find(\Auth::create_user($key, $password, $email, $group));

            // 保存
            $user->save();

        }

        // }}}
	}

}
/* End of file tasks/setuptables.php */
