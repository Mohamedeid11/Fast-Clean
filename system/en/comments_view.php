<?php
include("config.php");
if (!loggedin()) {
    header("Location: login.php");
    exit();
}if (($_SESSION['comments'] != '1')) {
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

    <div class="deleteData"></div>
    <div class="container">
        <div class="content-page">
            <!-- Start content -->
            <div class="content">
                <div class="row">
                <div class="container">
                    <div class="p-20">
                        <h4 class="m-b-20 header-title"><b><?=lang('comments')?></b></h4>
                        <div class="nicescroll p-l-r-10" style="max-height: 555px;">
                            <div class="timeline-2">
                                <?php
                                if (isset($_GET['washer_id']) && $_GET['washer_id'] != '') {
                                    $con->query("UPDATE `comments` SET `viewed`=1  where `washer_id`='" . $_GET['washer_id'] . "'");
                                }

                                $query = $con->query( " SELECT * FROM `comments` where 1=1  ");
                                $data_num =mysqli_num_rows($query);
                                ?>
                                <h4>
                                    <?=lang('count_all')?>   : <?= $data_num; ?>
                                </h4>
                               <?php
                                global $con;

                                $query = $con->query("SELECT * FROM `comments` ORDER BY `comment_id` ASC");
                                $x = 1;
                                while ($row = mysqli_fetch_assoc($query)) {
                                    $comment_id = $row['comment_id'];
                                    $client_id = $row['client_id'];
                                    $washer_id = $row['washer_id'];
                                    $comment = $row['comment'];
                                    $rate = $row['rate'];
                                    $viewed = $row['viewed'];
                                    $date = $row['date'];
                                ?>
                                    <div class="card-box" id="comment_<?= $comment_id ?>">
                                        <div class="table-detail table-actions-bar" style="margin-right: 1028px;">
                                            <a href="edit_comment.php?comment_id=<?= $comment_id ?>" class="table-action-btn " ><i class="md md-edit"></i></a>
                                            <a href="#" class="table-action-btn delete-comment" data-id="<?= $comment_id ?> " style="margin-right: 31px;"><i class="md md-close"></i></a>
<!--                                            <a href="#" class="on-default remove-row" data-id="--><?//= $comment_id; ?><!--"><i class="fa fa-trash-o"></i></a>-->
                                        </div>
                                        <div class="product-right-info">
                                            <?php
                                            $queryB = $con->query("SELECT * FROM `clients` WHERE `client_id`='$client_id'");

                                            while ($row = mysqli_fetch_assoc($queryB)) {
                                                $id = $row['id'] ;
                                                $client_nam = $row['client_name'] ;
                                                $client_phone = $row['client_phone'] ;
                                            }
                                            ?>
                                            <span>
                                                <b>  <?=lang('client_name')?>  :</b>
                                            </span>
                                            <span CLASS="p-30">
                                               <?= $client_nam?>
                                            </span>

                                            <br><hr>
                                            <span>
                                                <b> <?=lang('phone_number')?> : </b>
                                            </span>

                                            <span CLASS="p-30">
                                               <?= $client_phone?>
                                            </span>
                                            <br><hr>
                                            <?php
                                            $queryB = $con->query("SELECT * FROM `washers` WHERE `washer_id`='$washer_id'");

                                            while ($row = mysqli_fetch_assoc($queryB)) {
                                                $id = $row['id'] ;
                                                $washer_name = $row['washer_name_en'] ;
                                            }
                                            ?>

                                            <span>
                                                <b>  <?=lang('washer_name')?>  : </b>
                                            </span>

                                            <span CLASS="p-30">
                                                <a href="washer_details.php?washerId=<?= $washer_id ?>"><?= $washer_name ?><a>
                                            </span>
                                            <br><hr>
                                            <span>
                                                <b> <?=lang('date_add')?> : </b>
                                            </span>

                                            <span CLASS="p-30">
                                               <?= $date ?>
                                            </span>
                                            <br><hr>
                                            <span>
                                                <b> <?=lang('comment')?> : </b>
                                            </span>

                                            <span CLASS="p-30">
                                                 <?= $comment ?>
                                            </span>
                                            <br><hr>
                                            <span>
                                                <b> <?=lang('viewed')?> : </b>
                                            </span>

                                            <span CLASS="p-30">
                                                 <?=$viewed ?>
                                            </span>
                                            <br><hr>

                                            <span>
                                                <b> <?=lang('rate')?> : </b>
                                            </span>

                                            <span CLASS="p-30">
                                                <?=$rate ?>
                                            </span>
                                        </div>
                                    </div>

                                <?php
                                $x++;
                                }
                                ?>
                                <?php if ($data_num == 0) { ?>
                                    <?=lang('no_data')?>

                                <?php } ?>

                            </div>
                        </div>
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
            var comment_id = $(this).attr('data-id');
            // alert(category);
            $("#dialogConfirm").click(function () {
                var dataString = 'comment_id=' + comment_id;
                $.ajax({
                    type: "POST",
                    url: "functions/comments_function.php",
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
        $("#cssmenu ul>li").removeClass("active");
        $("#item300").addClass("active");
    });
    $('body').on('change', '.change_status_off', function () {
        var change_status_off = $(this).attr('data-id');
        var dataString = 'change_status_off=' + change_status_off;
        swal({
            title: "Confirm hide?",
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
                var dataString = 'change_status_off=' + change_status_off;
                $.ajax({
                    type: "POST",
                    url: "functions/washer_function.php",
                    data: dataString,
                    dataType: 'text',
                    cache: false,
                    success: function (data) {
                        $(".deleteData").html(data);
                    }
                });
            } else {
                swal("Changed ", "Changed  :)", "error");
            }
        });
    });
    $('body').on('change', '.change_status_on', function () {
        var change_status_on = $(this).attr('data-id');
        var dataString = 'change_status_on=' + change_status_on;
        swal({
            title: "Confirm hide?",
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
                var dataString = 'change_status_on=' + change_status_on;
                $.ajax({
                    type: "POST",
                    url: "functions/washer_function.php",
                    data: dataString,
                    dataType: 'text',
                    cache: false,
                    success: function (data) {
                        $(".deleteData").html(data);
                    }
                });
            } else {
                swal("Changed ", "Changed  :)", "error");
            }
        });
    });

</script>
</body>
</html>