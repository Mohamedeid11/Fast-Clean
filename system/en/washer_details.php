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
                        <h4 class="page-title"><?=lang('washers')?></h4>
                        <ol class="breadcrumb">
                            <li><a href="washer_view.php"><?=lang('washers')?></a></li>
                            <li class="active"><?=lang('washers')?> </li>
                        </ol>
                    </div>
                </div>
                <?php
                if ($_GET['washerId']) {

                $get_washer_id = $_GET['washerId'];

                $query_select = $con->query("SELECT * FROM `washers` WHERE `washer_id` = '{$get_washer_id}' LIMIT 1");
                $row_select = mysqli_fetch_array($query_select);

                $washer_id = $row_select['washer_id'];
                $washer_type_id = $row_select['washer_type_id'];
                $washer_name_en = $row_select['washer_name_en'];
                $washer_name_ar = $row_select['washer_name_ar'];
                $washer_desc_en = $row_select['washer_desc_en'];
                $washer_desc_ar = $row_select['washer_desc_ar'];
                $display = $row_select['display'];
                $date = $row_select['date'];

                $washer_image = $row_select['washer_image'];
                $get_image_ext = explode('.', $washer_image);
                $image_ext = strtolower(end($get_image_ext));

                if ($query_select) {
                ?>
                <div class="panel">
                    <div class="panel-body">
                        <div class="">
                            <div class="table-responsive m-t-20">
                                <table class="table">
                                    <tbody>
                                    <?php
                                    $queryB = $con->query("SELECT * FROM `washer_type` WHERE `id`='$washer_type_id'");

                                    while ($row = mysqli_fetch_assoc($queryB)) {
                                        $id = $row['id'] ;
                                        $washer_type_name_en = $row['washer_type_name_en'] ;
                                    }
                                    ?>
                                    <tr>
                                        <td width="400"><?=lang('washer_type')?></td>
                                        <td>
                                            <a href="washer_view.php"><?=$washer_type_name_en; ?></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="400"><?=lang('washer_name_english')?></td>
                                        <td>
                                            <?php echo $washer_name_en; ?>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="400"><?=lang('washer_name_arabic')?></td>
                                        <td>
                                            <?php echo $washer_name_ar; ?>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="400"><?=lang('washer_desc_english')?></td>
                                        <td>
                                            <?php echo $washer_desc_en; ?>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="400"><?=lang('washer_desc_arabic')?></td>
                                        <td>
                                            <?php echo $washer_desc_ar; ?>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td> <?=lang('status')?> </td>
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
                                    <tr>
                                        <td width="400">   <?=lang('services')?>:</td>
                                        <td>

                                        </td>
                                    </tr>
                                    <?php
                                    $query = $con->query("SELECT * FROM `services` where washer_id='$washer_id' ORDER BY `service_id` ASC");
                                    $index = 0;
                                    $size_count = mysqli_num_rows($query);
                                    if ($size_count > 0) {
                                        while ($row = mysqli_fetch_assoc($query)) {
                                            $service_name_en = $row['service_name_en'];
                                            $service_name_ar = $row['service_name_ar'];
                                            $service_price = $row['service_price'];
                                            ?>

                                            <tr>
                                                <td width="400"><?php echo $service_name_en; ?></td>
                                                <td width="400"><?php echo $service_name_ar; ?></td>
                                                <td>
                                                    <?php echo $service_price; ?> B.D

                                                </td>
                                            </tr>
                                            <?php
                                        }
                                    } else {
                                        echo '<tr>
                                                    <td width="400">   No Service </td>
                                                    <td>

                                                    </td>
                                                </tr>';
                                    }
                                    ?>
                                    </tbody>
                                </table>

                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label"><?=lang('image')?>   :</label>

                                <div class="col-md-9">
                                    <div class="form-group col-md-4">
                                        <div class="thumb">
                                            <img src="<?php echo $washer_image; ?>" style="height: 200px;width: 200px;margin-left: 10px;">
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
        $("#item4").addClass("active");
    });
</script>

</body>
</html>