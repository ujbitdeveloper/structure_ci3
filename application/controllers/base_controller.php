<?php


defined('BASEPATH') or exit('No direct script access allowed');

require_once APPPATH . '/libraries/REST_Controller.php';

use Restserver\Libraries\REST_Controller;

require_once APPPATH . '/libraries/JWT.php';
require_once APPPATH . '/libraries/BeforeValidException.php';
require_once APPPATH . '/libraries/ExpiredException.php';
require_once APPPATH . '/libraries/SignatureInvalidException.php';
require APPPATH . 'libraries/Format.php';
require_once APPPATH . '/libraries/JWT.php';

use \Firebase\JWT\JWT;

class Base_controller extends REST_Controller
{

    function __construct()
    {
        parent::__construct();
        //init custom log
        $this->load->helper('custom_log');
    }

    function configToken()
    {
        $cnf['exp'] = time() + 60 * 60 * 24 * 60;
        $cnf['secretkey'] = 'AnakSekecilItuBerkelahiDenganWaktuDemisatuimpianyangkerapganggutidurmu';
        return $cnf;
    }

    function apiKey()
    {
        $config["key"] = "iniBis4Diis1ApahJAH";
        return $config;
    }


    public function get_status_controller($response, $status)
    {
        if ($response) {
            return $this->response([
                'status' => true,
                'data' =>  $status
            ], REST_Controller::HTTP_CREATED);
        } else {
            return $this->response([
                'status' => false,
                'data' =>  $status
            ], REST_Controller::HTTP_NOT_FOUND);
        }
    }

    public function get_status_custom($response, $data)
    {
        if ($response) {
            return $this->response(
                $data,
                REST_Controller::HTTP_CREATED
            );
        } else {
            return $this->response([
                $data
            ], REST_Controller::HTTP_NOT_FOUND);
        }
    }
}
