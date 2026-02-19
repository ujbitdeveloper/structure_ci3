<?php


defined('BASEPATH') or exit('No direct script access allowed');

class contoh_Controller extends Base_controller
{

    function __construct()
    {
        parent::__construct();
    }

    function get_data_transaksi_contoh()
    {
        $date_where =  '2026-01-01';
        $view_data = $this->TM->get_data_transaksi($date_where);
        if ($view_data) {
            custom_log('custom_file_log', 'Berhasil get data dengan detail data : ' . json_encode($view_data));
            //response diambi dari base controller
            $this->get_status_controller(true, $view_data);
        } else {
            custom_log('custom_file_log', 'Tidak ada data ditanggal' . $date_where);
            $this->get_status_controller(false, 'tidak ada data');
        }
    }
    function insert_data_contoh()
    {
        $data_transaksi = array(
            'data' => 'data'
        );
        $insert_transaksi = $this->TM->insert_transaksi($data_transaksi);
        if ($insert_transaksi) {
            custom_log('custom_file_log', 'Berhasil Insert Data Baru dengan detail data ' . json_encode($data_transaksi));
            //response diambi dari base controller
            $this->get_status_controller(true, 'Berhasil Insert Data');
        } else {
            custom_log('custom_file_log', 'Gagal Insert Data');
            $this->get_status_controller(false, 'Gagal Insert Data');
        }
    }
    function update_data_contoh()
    {
        // contoh data update
        $data_update = array(
            'data_update' => 'data_update'
        );
        $nik = array(
            'nik' => '88888'
        );
        $update_data = $this->TM->update_activity($data_update, $nik);
        if ($update_data) {
            custom_log('custom_file_log', 'Berhasil Update Data untuk nik' . $nik);
            //response diambi dari base controller
            $this->get_status_controller(true, 'Berhasil Update Data');
        } else {
            custom_log('custom_file_log', 'Gagal Update Data untuk nik' . $nik);
            $this->get_status_controller(false, 'Gagal Update Data');
        }
    }
    function delete_data_contoh()
    {
        $data_update = array(
            'data_update' => 'data_update'
        );
        $nik = array(
            'nik' => '88888'
        );
        $delete_data = $this->TM->delete_transaksi($nik, $data_update);
        if ($delete_data) {
            custom_log('custom_file_log', 'Berhasil Delete Data untuk nik' . $nik);
            //response diambi dari base controller
            $this->get_status_controller(true, 'Berhasil Delete Data');
        } else {
            custom_log('custom_file_log', 'Gagal Delete Data untuk nik' . $nik);
            $this->get_status_controller(false, 'Gagal Delete Data');
        }
    }
}
