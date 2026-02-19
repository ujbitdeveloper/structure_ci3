<?php
defined('BASEPATH') or exit('No direct script access allowed');
require_once APPPATH . '/models/base_model.php';
class Transaksi_model extends Base_model
{
    private $dbM = 'db';
    private $table = 'tbl_master_transaksi';
    private $db_master = 'master';
    private $desc_sort = 'desc';
    private $asc_sort = 'asc';

    public function get_data_transaksi($date)
    {
        $where = array(
            'tanggal' => $date
        );
        $query = $this->get_where('*', $this->table, $where, $this->db);
        return $query;
    }

    function update_activity($data, $nik)
    {
        $where = array(
            'nik' => $nik,
        );
        $query = $this->update_data($data, 'tbl_activity', $where, $this->dbM);
        return $query;
    }

    function insert_activity($data)
    {
        $query = $this->insert_data($data, 'tbl_activity', $this->dbM);
        return $query;
    }


    function delete_transaksi($nik, $date)
    {
        $where = array(
            'nik' => $nik,
            'created_date' => $date
        );
        $query = $this->delete_data($this->table, $where, $this->dbM);
        return $query;
    }
}

/* End of file transaksi_model.php */
/* Location: ./application/models/transaksi_model.php */