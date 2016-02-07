<?php
/**
 * Fuel is a fast, lightweight, community driven PHP5 framework.
 *
 * @package    Fuel
 * @version    1.7
 * @author     Fuel Development Team
 * @license    MIT License
 * @copyright  2010 - 2015 Fuel Development Team
 * @link       http://fuelphp.com
 */

/**
 * The Welcome Controller.
 *
 * A basic controller example.  Has examples of how to set the
 * response body and status.
 *
 * @package  app
 * @extends  Controller
 */

class Controller_Welcome extends Controller {

    public function action_index() {

        if (!Auth::check()) {
            return Response::redirect('login/');
        }

        return Response::forge(View::forge('welcome/index'));
    }

    public function action_login() {

        return Response::forge(View::forge('welcome/login/index'));
    }

    public function action_404() {
        return Response::forge(Presenter::forge('welcome/404'), 404);
    }

}


