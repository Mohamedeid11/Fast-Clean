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

    <div class="deleteData"></div>

    <div class="content-page">
        <!-- Start content -->
        <div class="content">
            <div class="container">

                <!-- Page-Title -->
                <div class="row">
                    <div class="col-sm-12">
                        <h4 class="page-title">News </h4>
                        <ol class="breadcrumb">
                            <li><a href="news_view.php">News </a></li>
                            <li class="active">News </li>
                        </ol>
                    </div>
                </div>

                <div class="panel">
                    <div class="panel-body">
                        <div class="">
                            <table class="table table-striped" id="datatable-editable">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>English Title</th>
                                    <th>Arabic Title</th>
                                    <th> English Subject</th>
                                    <th> Arabic Subject</th>
                                    <th> Image</th>
                                    <th> Date Added </th>
                                    <th> Action </th>

                                </tr>
                                </thead>
                                <tbody>
                                <?php
                                global $con;

                                $query = $con->query("SELECT * FROM `news` ORDER BY `id` ASC");
                                $x = 1;
                                while ($row = mysqli_fetch_assoc($query)) {
                                    $id = $row['id'];
                                    $title_en = $row['title_en'];
                                    $title_ar = $row['title_ar'];
                                    $subject_en = $row['subject_en'];
                                    $subject_ar = $row['subject_ar'];
                                    $photo = $row['photo'];
                                    $display = $row['display'];
                                    $date = $row['date'];
                                    ?>
                                    <tr class="gradeX">
                                        <td><?php echo $x; ?></td>
                                        <?php
                                        $queryB = $con->query("SELECT * FROM `news` WHERE `id`='$id'");

                                        while ($row = mysqli_fetch_assoc($queryB)) {
                                            $project_name_en = $row['sub_category_name'] ;
                                            $project_name_ar = $row['sub_category_name_ar'] ;
                                        }
                                        ?>

                                        <td>
                                            <?= $title_en ?>
                                        </td>

                                        <td>
                                            <?= $title_ar ?>
                                        </td>

                                        <td>
                                            <?= $subject_en ?>
                                        </td>
                                        <td>
                                            <?= $subject_ar ?>
                                        </td>
                                        <td>
                                            <a href="<?php echo $photo; ?>" class="image-popup" title="<?php echo $title_en; ?>">
                                                <img src="<?php echo $photo; ?>" class="thumb-img" alt="<?php echo $title_en; ?>" height="100" style="width:100px;">
                                            </a>
                                        </td>
                                        <td><?= $date; ?></td>
                                        <td class="actions">
                                            <a href="news_edit.php?newsID=<?= $id; ?>" class="on-default"><i class="fa fa-pencil"></i></a>
                                        </td>
                                        <td class="actions">
                                            <a href="<?= $id; ?>" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
                                        </td>
                                    </tr>
                                    <?php
                                    $x++;
                                }
                                ?>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <?php include("include/footer_text.php"); ?>

    </div>

    <!-- MODAL -->
    <div id="dialog" class="modal-block mfp-hide">
        <section class="panel panel-info panel-color">
            <header class="panel-heading">
                <h2 class="panel-title">Are you sure ?</h2>
            </header>
            <div class="panel-body">
                <div class="modal-wrapper">
                    <div class="modal-text">
                        <p>Do You Want to deltel ? </p>
                    </div>
                </div>
                <div class="row m-t-20">
                    <div class="col-md-12 text-right">
                        <button id="dialogConfirm" class="btn btn-primary waves-effect waves-light">Confirm </button>
                        <button id="dialogCancel" class="btn btn-default waves-effect">Cancell </button>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <!-- end Modal -->

    <!-- End Right content here -->

    <!-- Right Sidebar -->
    <div class="side-bar right-bar nicescroll">
        <?php include("include/rightbar.php"); ?>
    </div>
    <!-- /Right-bar -->
</div>
<!-- END wrapper -->
<?php include("include/footer.php"); ?>

<script type="text/javascript">
    $(document).ready(function () {
        $('body').on('click', '.on-default', function () {
            var id = $(this).attr('href');
            // alert(category);
            $("#dialogConfirm").click(function () {
                var dataString = 'id=' + id;
                $.ajax({
                    type: "POST",
                    url: "functions/news_function.php",
                    data: dataString,
                    dataType: 'text',
                    cache: false,
                    success: function (data) {
                        $(".deleteData").html(data);
                        //alert(category);
                    }
                });
            });
        });
    });
</script>

<script>
    $(document).ready(function () {
        $("#cssslider ul>li").removeClass("active");
        $("#item5").addClass("active");
    });
</script>

</body>
</html>