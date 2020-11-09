<?php
include("config.php");
if (!loggedin()) {
    header("Location: login.php");
    exit();
}if (($_SESSION['cat_and_sub'] != '1')) {
    header("Location: error.php");
    exit();
}
?>
<!DOCTYPE html>
<html>
    <?php include("include/heads.php"); ?>	
    <style>.custom-label{
            margin-top: 11px!important;

        }</style>
    <body class="fixed-left">
        <div id="wrapper">
            <!-- Top Bar Start -->
            <?php include("include/topbar.php"); ?>
            <!-- Top Bar End -->

            <!-- Left Sidebar Start -->
            <?php include("include/leftsidebar.php"); ?>
            <!-- Left Sidebar End -->

            <!-- Start right Content here -->

            <div class="deleteData"></div>

            <div class="content-page">
                <!-- Start content -->
                <div class="content">
                    <div class="container">

                        <!-- Page-Title -->
                        <div class="row">
                            <div class="col-sm-12">
                                <h4 class="page-title">  Project </h4>
                                <ol class="breadcrumb">
                                    <li><a href="sub_service_view.php"> Projects </a></li>
                                    <li class="active">View Projects</li>
                                </ol>
                            </div>
                        </div>
                        <?php
                        if ($_GET['subCatId']) {

                            $get_sub_cat_id = $_GET['subCatId'];

                            $query_select = $con->query("SELECT * FROM `sub_categories` WHERE `sub_category_id` = '{$get_sub_cat_id}' LIMIT 1");
                            $row_select = mysqli_fetch_array($query_select);

                            $sub_category_id = $row_select['sub_category_id'];
                            $sub_category_name = $row_select['sub_category_name'];
                            $sub_category_desc = $row_select['sub_category_desc'];
                            $sub_category_name_ar = $row_select['sub_category_name_ar'];
                            $sub_category_desc_ar = $row_select['sub_category_desc_ar'];
                            $client_id = $row_select['parent_category_id'];
                            $cat_name = parent_category_name($client_id);
                            $display = $row_select['display'];

                            $sub_category_image = $row_select['sub_category_image'];
                            $get_image_ext = explode('.', $sub_category_image);
                            $image_ext = strtolower(end($get_image_ext));

                            if ($query_select) {
                                ?>
                                <div class="panel">
                                    <div class="panel-body">
                                        <div class="">
                                            <div class="table-responsive m-t-20">
                                                <table class="table">
                                                    <tbody>
                                                        <tr>
                                                            <td width="400"> Project Name English  </td>
                                                            <td>
                                                                <?php echo $sub_category_name; ?>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td width="400">Project Name Arabic  </td>
                                                            <td>
                                                                <?php echo $sub_category_name_ar; ?>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td> Client Name </td>
                                                            <td>
                                                                <?php echo $cat_name; ?>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td> English Description  </td>
                                                            <td>
                                                                <?php echo $sub_category_desc; ?>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td> Arabic Description  </td>
                                                            <td>
                                                                <?php echo $sub_category_desc_ar; ?>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td> Status </td>
                                                            <td>
                                                                <?php
                                                                if ($display == 0) {
                                                                    echo "Hidden";
                                                                } else {
                                                                    echo "Shown";
                                                                }
                                                                ?>
                                                            </td>
                                                        </tr>

                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Image   :</label>

                                                <div class="col-md-9">
                                                    <div class="form-group col-md-4">
                                                        <div class="thumb">
                                                            <img src="<?php echo $sub_category_image; ?>" style="height: 200px;width: 200px;margin-left: 10px;">
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>			
                </div>
                <?php
            }
        }
        ?>
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
        $("#item3").addClass("active");
    });
</script>

</body>
</html>