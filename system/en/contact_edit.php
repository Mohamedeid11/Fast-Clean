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

    if (isset($_POST['contact_update'])) {

        $contactID_update = $_POST['contactID_update'];
        $address_ar = $_POST['address_ar'];
        $address_en = $_POST['address_en'];
        $phone = $_POST['phone'];
        $email = $_POST['email'];
        $twitter = $_POST['twitter'];
        $facebook = $_POST['facebook'];
        $whats_app = $_POST['whats_app'];
        $instagram = $_POST['instagram'];
        $website = $_POST['website'];

        $errors = array();

        if (!empty($errors)) {
            foreach ($errors as $error) {
                //echo $error, '<br />';
                echo get_error($error);
            }
        }
        else {
            $update = $con->query("UPDATE `contact` SET `address_ar`='$address_ar' ,`address_en`='$address_en' ,`phone`='$phone',`email`='$email' , `twitter`='$twitter',`facebook`='$facebook' ,`whats_app`='$whats_app' , `instagram`='$instagram' ,`website`='$website' WHERE `id`='$contactID_update'");

            echo get_success("Successfully Updated");
            echo "<meta http-equiv='refresh' content='0'>";
        }
    }

    ?>
    <div class="container">
        </br>

    <div class="content-page">
        <!-- Start content -->
        <div class="content">
            <div class="container">

                <!-- Page-Title -->
                <div class="row">
                    <div class="col-sm-12">
                        <h4 class="page-title"><?=lang('contact_us')?></h4>
                        <ol class="breadcrumb">
                            <li><a href="#"><?=lang('contact_us')?></a></li>
                            <li class="active"><?=lang('contact_us')?></li>
                        </ol>
                    </div>
                </div>

                <div class="updateData"></div>

                <?php

                $query_select = $con->query("SELECT * FROM `contact` ");
                $row_select = mysqli_fetch_array($query_select);
                $id = $row_select['id'];
                $address_ar = $row_select['address_ar'];
                $address_en = $row_select['address_en'];
                $phone = $row_select['phone'];
                $email = $row_select['email'];
                $twitter = $row_select['twitter'];
                $facebook = $row_select['facebook'];
                $whats_app = $row_select['whats_app'];
                $instagram = $row_select['instagram'];
                $website = $row_select['website'];


                    if ($query_select) {
                        ?>
                        <div class="container">
                            </br>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="card-box">
                                        <form method="POST" enctype="multipart/form-data" data-parsley-validate novalidate>
                                            <input type="hidden" name="contactID_update" id="contactID_update" parsley-trigger="change" required value="<?php echo $id; ?>" class="form-control">

                                            <div class="form-group  col-md-5">
                                                <label for="sub_cat_desc"><?=lang('phone_number')?></label>
                                                <input type="text" class="form-control" rows="3" name="phone"  minlength="3" maxlength="1000" value="<?= $phone ;?>">
                                            </div>
                                            <div class="form-group  col-md-5">
                                                <label for="sub_cat_desc"><?=lang('email')?></label>
                                                <input type="text" class="form-control" rows="3" name="email"  minlength="3" maxlength="1000" value="<?= $email ;?>">
                                            </div>
                                            <div class="form-group  col-md-5">
                                                <label for="sub_cat_desc"><?=lang('address_ar')?></label>
                                                <input type="text" class="form-control" rows="3" name="address_ar"  minlength="3" maxlength="1000" value="<?= $address_ar ;?>">
                                            </div>
                                            <div class="form-group  col-md-5">
                                                <label for="sub_cat_desc"><?=lang('address_en')?></label>
                                                <input type="text" class="form-control" rows="3" name="address_en"  minlength="3" maxlength="1000" value="<?= $address_en ;?>">
                                            </div>
                                            <div class="form-group  col-md-5">
                                                <label for="sub_cat_desc"><?=lang('website')?></label>
                                                <input type="text" class="form-control" rows="3" name="website"  minlength="3" maxlength="1000" value="<?= $website ;?>">
                                            </div>
                                            <div class="form-group  col-md-5">
                                                <label for="sub_cat_desc">Whats App</label>
                                                <input type="text" class="form-control" rows="3" name="whats_app"  minlength="3" maxlength="1000" value="<?= $whats_app ;?>">
                                            </div>
                                            <div class="form-group col-md-5">
                                                <label for="sub_cat_desc">Face Book</label>
                                                <input type="text" class="form-control" rows="3" name="facebook"  minlength="3" maxlength="1000" value="<?= $facebook ;?>">
                                            </div>
                                            <div class="form-group col-md-5">
                                                <label for="sub_cat_desc">Instagram</label>
                                                <input type="text" class="form-control" rows="3" name="instagram"  minlength="3" maxlength="1000" value="<?= $instagram ;?>">
                                            </div>
                                            <div class="form-group col-md-5">
                                                <label for="sub_cat_desc">Twitter</label>
                                                <input type="text" class="form-control" rows="3" name="twitter"  minlength="3" maxlength="1000" value="<?= $twitter ;?>">
                                            </div>

                                            <div class="clearfix"></div>

                                            <br>
                                            <div class="form-group text-right m-b-0">
                                                <button class="btn btn-primary waves-effect waves-light" type="submit" name="contact_update" id="updateMenu"><?=lang('update')?></button>
                                            </div>
                                        </form>

                                         </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <?php
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
        $("#item301").addClass("active");
    });
</script>

</body>
</html>