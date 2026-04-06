<!DOCTYPE html>
<html lang="en">
<?php $this->load->view('layout/header_style') ?>
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/style/select2/select2-bootstrap-5-theme.min.css">


<div class="card-body pc-component">
    <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog"
        aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title h4" id="myLargeModalLabel">Edit Data Charger</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="userForm" action="<?php echo site_url('data/charger_data/edit_charger') ?>" autocomplete="off" method="post">
                        <input type="hidden" id="id" name="id">
                        <div class="row g-4">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="form-label" for="charge_point_id_edit">Charge Point ID</label>
                                    <input type="text" class="form-control" id="charge_point_id_edit" name="charge_point_id_edit" placeholder="UJB_TESTERATESS_2">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-floating mb-0">
                                    <div class="form-group">
                                        <label class="form-label" for="Model_edit">Model</label>
                                        <input type="text" class="form-control" id="Model_edit" name="Model_edit" placeholder="EVA-07S">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row g-4">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="form-label" for="total_connector_edit">Total Connector</label>
                                    <input type="number" min=1 class="form-control" id="total_connector_edit" name="total_connector_edit" placeholder="1">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-floating mb-0">
                                    <div class="form-group">
                                        <label class="form-label" for="Type_edit">Type</label>
                                        <select class="form-select" id="Type_edit" name="Type_edit">
                                            <option value="AC">AC</option>
                                            <option value="DC">DC</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="form-label" for="station_id_edit">Station</label>
                            <select class="form-select" id="station_id_edit" name="station_id_edit">
                            </select>
                        </div>
                        <hr>
                        <?php $this->load->view('layout/button_group_form') ?>
                    </form>

                </div>
            </div>
        </div>
    </div>

</div>

<script type="text/javascript" src="<?php echo base_url('assets/request/js/form_edit_charger.js?v=') . time(); ?>"></script>