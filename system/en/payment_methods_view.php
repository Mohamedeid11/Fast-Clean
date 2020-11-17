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
<link href="assets_<?= $_COOKIE['site_lang'] ?>/plugins/datatables/datatables.min.css" rel="stylesheet" type="text/css" />
<link href="assets_<?= $_COOKIE['site_lang'] ?>/plugins/datatables/plugins/bootstrap/datatables.bootstrap-rtl.css" rel="stylesheet" type="text/css" />
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
                        <h4 class="page-title"><?= lang('payment_methods_view')?></h4>
                        <ol class="breadcrumb">
                            <li><a href="payment_methods_view.php"><?= lang('payment_methods')?></a></li>
                            <li class="active"><?= lang('payment_methods_view')?></li>
                        </ol>
                    </div>
                </div>

                <div class="panel">
                    <div class="panel-body">
                        <div class="">
                            <table class="table table-striped" id="custom_tbl_dt">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th><?= lang('name_english')?></th>
                                    <th><?= lang('name_arabic')?></th>
                                    <th><?= lang('status')?></th>
                                    <th><?= lang('action')?></th>
                                </tr>
                                </thead>

                                <tbody> <?php $parent_cats = view_payment_methods(); ?>
                                <?php foreach ($parent_cats as $key => $one) { ?>

                                    <tr class="gradeX <?php echo $one['id']; ?>">
                                        <td><?php echo $key; ?></td>
                                        <td><?php echo $one['name_en']; ?></td>
                                        <td><?php echo $one['name_ar']; ?></td>

                                        <td>
                                            <?php if ($one['display'] == 1) { ?>
                                                <input class="change_cat_status_off_payment" data-id="<?php echo $one['id']; ?>" type="checkbox" checked  data-plugin="switchery" data-color="#81c868"/>
                                            <?php } else if ($one['display'] == 0) {
                                                ?>
                                                <input class="change_cat_status_on_payment" data-id="<?php echo $one['id']; ?>" type="checkbox"  data-plugin="switchery" data-color="#81c868"/>
                                            <?php }
                                            ?>

                                        </td>


                                        <td class="actions">
                                            <a href="payment_methods_edit.php?payment_method_id=<?php echo $one['id']; ?>" class="on-default"><i class="fa fa-pencil"></i></a>
                                        </td>


                                    </tr>
                                <?php }
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

    <!-- End Right content here -->

    <!-- Right Sidebar -->
    <div class="side-bar right-bar nicescroll">
        <?php include("include/rightbar.php"); ?>
    </div>
    <!-- /Right-bar -->
</div>
<!-- END wrapper -->
<?php include("include/footer.php"); ?>
<script src="assets_<?= $_COOKIE['site_lang'] ?>/plugins/datatables/datatables.min.js" type="text/javascript"></script>
<script src="assets_<?= $_COOKIE['site_lang'] ?>/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js"></script>
<script type="text/javascript">

    //to open model for accept del
    $('body').on('click', '.deletemsg', function () {
        var category = $(this).attr('data-id');
        var dataString = 'category=' + category;
        bootbox.dialog({
            message: "هل تريد حذف هذا العنصر؟",
            title: "رساله تاكيد الحذف",
            buttons: {
                danger: {
                    label: "الغاء",
                    className: "btn-danger"
                },
                main: {
                    label: "حذف",
                    className: "btn-primary",
                    callback: function () {
                        //do something else
                        $.ajax({
                            type: "POST",
                            url: "functions/parent_cat_functions.php",
                            data: dataString,
                            dataType: 'text',
                            cache: false,
                            success: function (data) {
                                $(".deleteData").html(data);
                                $("." + category).remove();

                                //alert(category);
                            }
                        });
                    }
                }
            }
        });
    });

    $('body').on('change', '.change_cat_status_off_payment', function () {
        var change_cat_status_off_payment = $(this).attr('data-id');
        var dataString = 'change_cat_status_off_payment=' + change_cat_status_off_payment;
        swal({
            title: "Confirm Hide?",
            text: "",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#DD6B55",
            confirmButtonText: "Yes",
            cancelButtonText: "Cancel",
            closeOnConfirm: false,
            closeOnCancel: true
        }, function (isConfirm) {
            if (isConfirm) {
                swal("Changed", "", "success");
                var dataString = 'change_cat_status_off_payment=' + change_cat_status_off_payment;
                $.ajax({
                    type: "POST",
                    url: "functions/payment_delivery_view_functions.php",
                    data: dataString,
                    dataType: 'text',
                    cache: false,
                    success: function (data) {
                        $(".deleteData").html(data);
                    }
                });
            } else {
                swal("Changed", "Changed :)", "error");
            }
        });
    });
    $('body').on('change', '.change_cat_status_on_payment', function () {
        var change_cat_status_on_payment = $(this).attr('data-id');
        var dataString = 'change_cat_status_on_payment=' + change_cat_status_on_payment;
        swal({
            title: "Change Status?",
            text: "",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#DD6B55",
            confirmButtonText: "Yes",
            cancelButtonText: "Cancel",
            closeOnConfirm: false,
            closeOnCancel: true
        }, function (isConfirm) {
            if (isConfirm) {
                swal("Changed", "", "success");
                var dataString = 'change_cat_status_on_payment=' + change_cat_status_on_payment;
                $.ajax({
                    type: "POST",
                    url: "functions/payment_delivery_view_functions.php",
                    data: dataString,
                    dataType: 'text',
                    cache: false,
                    success: function (data) {
                        $(".deleteData").html(data);
                    }
                });
            } else {
                swal("Changed", "Changed :)", "error");
            }
        });
    });

</script>

<script>
    $(document).ready(function () {
        $("#cssmenu ul>li").removeClass("active");
        $("#item12").addClass("active");
    });
</script>

</body>
</html>