<!DOCTYPE html>
<html lang="en">
<?php $this->load->view('layout/header_style') ?>
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/style/select2/select2-bootstrap-5-theme.min.css">

<body data-pc-preset="preset-1" data-pc-direction="ltr" data-pc-theme="light">
  <!-- [ Pre-loader ] start -->
  <div class="loader-bg">
    <div class="loader-track">
      <div class="loader-fill"></div>
    </div>
  </div>
  <div class="loader-bg">
    <div class="loader-track">
      <div class="loader-fill"></div>
    </div>
  </div>
  <?php $this->load->view('layout/sidebar') ?>
  <?php $this->load->view('layout/header_dashboard') ?>

  <!-- [ Main Content ] start -->
  <section class="pc-container">
    <div class="pc-content">

      <div class="page-header">
        <?php
        $data['data_header'] = array(
          'site_url' => "chargers",
          'master_nav' => "Charger",
          'active_nav' => "Form New Charger",
          'page_header_tittle' => "Form New Charger",
        );
        $this->load->view('layout/form_content_header', $data)
        ?>
      </div>

      <div class="col-md-12">
        <div class="card">
          <div class="card-header">
            <h5>Form Input Charger</h5>
          </div>
          <div class="card-body">
            <form id="userForm" action="<?php echo site_url('data/charger_data/insert_new_charger') ?>" autocomplete="off" method="post">
              <div class="row g-4">
                <div class="col-md-6">
                  <div class="form-group">
                    <label class="form-label" for="charge_point_id">Charge Point ID</label>
                    <input type="text" class="form-control" id="charge_point_id" name="charge_point_id" placeholder="UJB_TESTERATESS_2">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-floating mb-0">
                    <div class="form-group">
                      <label class="form-label" for="Model">Model</label>
                      <input type="text" class="form-control" id="Model" name="Model" placeholder="EVA-07S">
                    </div>
                  </div>
                </div>
              </div>

              <div class="row g-4">
                <div class="col-md-6">
                  <div class="form-group">
                    <label class="form-label" for="total_connector">Total Connector</label>
                    <input type="number" min=1 class="form-control" id="total_connector" name="total_connector" placeholder="1">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-floating mb-0">
                    <div class="form-group">
                      <label class="form-label" for="Type">Type</label>
                      <select class="form-select" id="Type" name="Type">
                        <option value="AC">AC</option>
                        <option value="DC">DC</option>
                      </select>
                    </div>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <label class="form-label" for="station_id">Station</label>
                <select class="form-select" id="station_id" name="station_id">
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
  </section>

  <?php $this->load->view('layout/footer') ?>

  <script type="text/javascript" src="<?php echo base_url('assets/request/js/form_charger.js?v=') . time(); ?>"></script>

  <!-- [Page Specific JS] end -->
</body>
<!-- [Body] end -->

</html>