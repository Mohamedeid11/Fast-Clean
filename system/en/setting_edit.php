<?php
include("config.php");
if (!loggedin()) {
    header("Location: login.php");
    exit();
}if (($_SESSION['about'] != '1')) {
    header("Location: error.php");
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

            if (isset($_POST['setting_update'])) {

                $id = $_POST['id'];
                $android_version = $_POST['android_version'];
                $ios_version = $_POST['ios_version'];
                $ios_link = $_POST['ios_link'];
                $android_link = $_POST['android_link'];
                $copyright_name_en=$_POST['copyright_name_en'];
                $copyright_name_ar=$_POST['copyright_name_ar'];
                $copyright_link=$_POST['copyright_link'];



                $update = $con->query("UPDATE `setting` SET `android_version`='$android_version',
                                                                `ios_version`='$ios_version',
                                                                `ios_link`='$ios_link',
                                                                `android_link`='$android_link',
                                                                `copyright_name_en`='$copyright_name_en',
                                                                `copyright_name_ar`='$copyright_name_ar',
                                                                `copyright_link`='$copyright_link'WHERE `id`='$id'");
                if ($update) {
                    echo get_success("Successfully Updated");
                } else {
                    echo get_error("Here's a error!");
                }
            }
            ?>


            <div class="content-page">
                <!-- Start content -->
                <div class="content">
                    <div class="container">

                        <!-- Page-Title -->
                        <div class="row">
                            <div class="col-sm-12">
                                <h4 class="page-title">Setting</h4>
                                <ol class="breadcrumb">
                                    <!--<li><a href="user_add.php">المديرين</a></li>-->
                                    <!--<li class="active">تعديل مدير</li>-->
                                </ol>
                            </div>
                        </div>

                        <div class="updateData"></div>

                        <?php
                        $query_select = $con->query("SELECT * FROM `setting` order by id desc");

                        $row_select = mysqli_fetch_array($query_select);
                        $id = $row_select['id'];
                        $android_version = $row_select['android_version'];
                        $ios_version = $row_select['ios_version'];
                        $ios_link = $row_select['ios_link'];
                        $android_link = $row_select['android_link'];
                        $copyright_name_en=$row_select['copyright_name_en'];
                        $copyright_name_ar=$row_select['copyright_name_ar'];
                        $copyright_link=$row_select['copyright_link'];

                        if ($query_select) {
                            ?>
                            <div class="row">
                                <div class="col-12">
                                    <div class="card-box"> 									
                                        <form method="POST" enctype="multipart/form-data" data-parsley-validate novalidate>
                                            <input type="hidden" name="id" id="id" parsley-trigger="change" required value="<?php echo $id; ?>" class="form-control">
                                            <div class="form-group">
                                                <label> Android Version </label>
                                                <input type="text" value="<?php echo $android_version; ?>" name="android_version" parsley-trigger="change"  placeholder="footer caption" class="form-control">
                                            </div>

                                            <div class="form-group">
                                                <label> IOS Version </label>
                                                <input type="text" value="<?php echo $ios_version; ?>" name="ios_version" parsley-trigger="change"  placeholder="footer caption" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label> IOS Link </label>
                                                <input type="text" value="<?php echo $ios_link; ?>" name="ios_link" parsley-trigger="change"  placeholder="footer caption" class="form-control">
                                            </div>

                                            <div class="form-group">
                                                <label> Android Link </label>
                                                <input type="text" value="<?php echo $android_link; ?>" name="android_link" parsley-trigger="change"  placeholder="footer caption" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label> footer english caption </label>
                                                <input type="text" value="<?php echo $copyright_name_en; ?>" name="copyright_name_en" parsley-trigger="change"  placeholder="footer caption" class="form-control">
                                            </div>

                                            <div class="form-group">
                                                <label> footer arabic caption </label>
                                                <input type="text" value="<?php echo $copyright_name_en; ?>" name="copyright_name_ar" parsley-trigger="change"  placeholder="footer caption" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label> footer arabic caption </label>
                                                <input type="text" value="<?php echo $copyright_link; ?>" name="copyright_link" parsley-trigger="change"  placeholder="footer caption" class="form-control">
                                            </div>
                                            <br>
                                            <div class="form-group text-right m-b-0">
                                                <button class="btn btn-primary waves-effect waves-light" type="submit" name="setting_update" id="updateSetting">Update</button>
                                            </div>
                                        </form>
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
        $("#discount").change(function () {
            var discount = $(this).val();
            if (discount == 1) {
                $("#discount_percentage_div").show();
            } else {
                $('#discount_percentage_div').css('display', 'none');
            }
        });
    </script>
    <script>
                $('body').on('change', '.change_setting_status_off', function () {
                var change_setting_status_off = $(this).attr('data-id');
                swal({
                    title: "Confirm hidden?",
                    text: "",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#DD6B55",
                    confirmButtonText: "yes",
                    cancelButtonText: "cancell",
                    closeOnConfirm: false,
                    closeOnCancel: true
                }, function (isConfirm) {
                    if (isConfirm) {
                        swal("changed ", "", "success");
                        var dataString = 'change_setting_status_off=' + change_setting_status_off;
                        $.ajax({
                            type: "POST",
                            url: "functions/regions_functions.php",
                            data: dataString,
                            dataType: 'text',
                            cache: false,
                            success: function (data) {
                                $(".deleteData").html(data);
                            }
                        });
                        location.reload()
                    } else {
                        swal("changed ", "changed  :)", "error");
                    }
                });
            });
            $('body').on('change', '.change_setting_status_on', function () {
                var change_setting_status_on = $(this).attr('data-id');
                swal({
                    title: "change status?",
                    text: "",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#DD6B55",
                    confirmButtonText: "yes",
                    cancelButtonText: "cancell",
                    closeOnConfirm: false,
                    closeOnCancel: true
                }, function (isConfirm) {
                    if (isConfirm) {
                        swal("changed ", "", "success");
                        var dataString = 'change_setting_status_on=' + change_setting_status_on;
                        $.ajax({
                            type: "POST",
                            url: "functions/regions_functions.php",
                            data: dataString,
                            dataType: 'text',
                            cache: false,
                            success: function (data) {
                                $(".deleteData").html(data);
                            }
                        });
                        location.reload()
                    } else {
                        swal("changed ", "changed  :)", "error");
                    }
                });
            });

        $('.select2me').select2({
            placeholder: "Select",
            width: 'auto',
            allowClear: true
        });
        $(document).ready(function () {
            $("#cssmenu ul>li").removeClass("active");
            $("#item112").addClass("active");
        });
    </script>	

</body>
</html>