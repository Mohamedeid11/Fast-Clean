<?php
include("config.php");
if (!loggedin()) {
    header("Location: login.php");
    exit();
}
?>
<!DOCTYPE html>
<html>

<?php include("include/heads.php"); ?>
<body class="fixed-left">

<div id="wrapper">
    <!-- Top Bar Start -->
    <?php include("include/topbar.php"); ?>
    <!-- Top Bar End -->

    <!-- Left Sidebar Start -->
    <?php include("include/leftsidebar.php"); ?>
    <!-- Left Sidebar End -->

    <!-- Start right Content here -->

    <!-- ============================================================== -->
    <!-- Start right Content here -->
    <!-- ============================================================== -->

    <?php
    // error_reporting(0);

    if (isset($_POST['client_update'])) {

        $clientID_update = $_POST['clientID_update'];
        $client_name = $_POST['client_name'];
        $client_password = $_POST['client_password'];
        $client_email = $_POST['client_email'];
        $client_phone = $_POST['client_phone'];

        $errors = array();

        if (!empty($errors)) {
            foreach ($errors as $error) {
                //echo $error, '<br />';
                echo get_error($error);
            }
        }
        else {
            $con->query("UPDATE `clients` SET `client_name`='$client_name' , `client_password`='$client_password',`client_email`='$client_email',`client_phone`='$client_phone' WHERE `client_id`='$clientID_update'");
        }
        echo get_success("Successfully Updated");
        echo "<meta http-equiv='refresh' content='0'>";

    }

    ?>


    <div class="content-page">
        <!-- Start content -->
        <div class="content">
            <div class="container">

                <!-- Page-Title -->
                <div class="row">
                    <div class="col-sm-12">
                        <h4 class="page-title"><?= lang('clients')?> </h4>
                        <ol class="breadcrumb">
                            <li><a href="client_view.php"><?= lang('clients')?>  </a></li>
                            <li class="active"><?= lang('update_client')?> </li>
                        </ol>
                    </div>
                </div>

                <div class="updateData"></div>

                <?php
                if ($_GET['clientID']) {

                    $get_client_id = $_GET['clientID'];

                    $query_select = $con->query("SELECT * FROM `clients` WHERE `client_id` = '{$get_client_id}' LIMIT 1");
                    $row_select = mysqli_fetch_array($query_select);

                    $id = $row_select['client_id'];
                    $name = $row_select['client_name'];
                    $password = $row_select['client_password'];
                    $email = $row_select['client_email'];
                    $phone = $row_select['client_phone'];

                    if ($query_select) {
                        ?>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card-box">
                                    <form method="POST" enctype="multipart/form-data" data-parsley-validate novalidate>
                                        <input type="hidden" name="clientID_update" id="clientID_update" parsley-trigger="change" required value="<?php echo $id; ?>" class="form-control">
                                        <div class="form-group">
                                            <label for="service_name"><?= lang('client_name')?></label>
                                            <input type="text" name="client_name" parsley-trigger="change"  placeholder="<?= lang('client_name_english')?>" class="form-control" id="client_name_en"  value="<?php echo $name; ?>">
                                        </div>
                                        <div class="form-group">
                                            <label for="service_name"><?= lang('password')?></label>
                                            <input type="password" name="client_password" parsley-trigger="change"  placeholder="<?= lang('password')?>" class="form-control" id="client_password"  value="<?= $password ?>">
                                        </div>
                                        <div class="form-group">
                                            <label for="service_name"><?= lang('email')?></label>
                                            <input type="text" name="client_email" parsley-trigger="change"  placeholder="<?= lang('email')?>" class="form-control" id="client_email"  value="<?php echo $email; ?>">
                                        </div>
                                        <div class="form-group">
                                            <label for="service_name"><?= lang('phone_number')?></label>
                                            <input type="text" name="client_phone" parsley-trigger="change"  placeholder="<?= lang('phone_number')?>" class="form-control" id="client_phone"  value="<?= $phone ?>">
                                        </div>
                                        <br>
                                        <div class="form-group text-right m-b-0">
                                            <button class="btn btn-primary waves-effect waves-light" type="submit" name="client_update" id="updateMenu"><?= lang('save')?></button>
                                        </div>
                                    </form>

                                </div>
                            </div>
                        </div>
                        <?php
                    }
                }
                ?>

            </div>
        </div>
        <?php include("include/footer_text.php"); ?>

    </div>

    <!-- End Right content here -->

    <!-- Right Sidebar -->
    <div class="side-bar right-bar nicescroll">
        <?php include("include/rightbar.php"); ?>
    </div>
    <!-- /Right-bar -->
</div>
<!-- END wrapper -->
<?php include("include/footer.php"); ?>
<script>
    $(document).ready(function () {
        $("#cssmenu ul>li").removeClass("active");
        $("#item12").addClass("active");
    });
</script>

</body>
</html>