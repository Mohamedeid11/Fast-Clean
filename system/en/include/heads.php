<?php
include("../../languages/admin_panel_language.php");
ChangeLanguage();
?>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Marsroof">

    <link rel="shortcut icon" href="assets_<?= $_COOKIE['site_lang'] ?>/images/favicon_1.ico">

    <title>FastClean - Control Panel</title>

    <!--Morris Chart CSS -->

    <link rel="stylesheet" href="assets_<?= $_COOKIE['site_lang'] ?>/plugins/magnific-popup/dist/magnific-popup.css" />
    <link rel="stylesheet" href="assets_<?= $_COOKIE['site_lang'] ?>/plugins/jquery-datatables-editable/datatables.css" />

    <link rel="stylesheet" href="assets_<?= $_COOKIE['site_lang'] ?>/plugins/morris/morris.css">


    <link href="assets_<?= $_COOKIE['site_lang'] ?>/plugins/sweetalert/dist/sweetalert.css" rel="stylesheet" type="text/css">

    <link href="assets_<?= $_COOKIE['site_lang'] ?>/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.css" rel="stylesheet" />
    <link href="assets_<?= $_COOKIE['site_lang'] ?>/plugins/switchery/dist/switchery.min.css" rel="stylesheet" />
    <link href="assets_<?= $_COOKIE['site_lang'] ?>/plugins/multiselect/css/multi-select.css"  rel="stylesheet" type="text/css" />
    <link href="assets_<?= $_COOKIE['site_lang'] ?>/plugins/select2/select2.css" rel="stylesheet" type="text/css" />
    <link href="assets_<?= $_COOKIE['site_lang'] ?>/plugins/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" />
    <link href="assets_<?= $_COOKIE['site_lang'] ?>/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.css" rel="stylesheet" />
    <link href="assets_<?= $_COOKIE['site_lang'] ?>/plugins/autocomplete/jquery-ui.min.css" rel="stylesheet" />

    <link href="assets_<?= $_COOKIE['site_lang'] ?>/plugins/bootstrap-datepicker/css/datepicker.css" rel="stylesheet" />
    <link href="assets_<?= $_COOKIE['site_lang'] ?>/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" />

    <link href="assets_<?= $_COOKIE['site_lang'] ?>/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets_<?= $_COOKIE['site_lang'] ?>/css/core.css" rel="stylesheet" type="text/css" />
    <link href="assets_<?= $_COOKIE['site_lang'] ?>/css/components.css" rel="stylesheet" type="text/css" />
    <link href="assets_<?= $_COOKIE['site_lang'] ?>/css/icons.css" rel="stylesheet" type="text/css" />
    <link href="assets_<?= $_COOKIE['site_lang'] ?>/css/pages.css" rel="stylesheet" type="text/css" />
    <link href="assets_<?= $_COOKIE['site_lang'] ?>/css/responsive.css" rel="stylesheet" type="text/css" />
    <link href="assets_<?= $_COOKIE['site_lang'] ?>/css/custom.css" rel="stylesheet" type="text/css" />

    <link href="assets_<?= $_COOKIE['site_lang'] ?>/plugins/switchery/css/switchery.min.css" rel="stylesheet" />



    <!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

    <script src="assets_<?= $_COOKIE['site_lang'] ?>/js/jquery.min.js"></script>

    <script src="assets_<?= $_COOKIE['site_lang'] ?>/js/modernizr.min.js"></script>

    <!--<link href="assets_<?= $_COOKIE['site_lang'] ?>/plugins/dropzone/dropzone-rtl.css" rel="stylesheet" />-->
    <link href="assets_<?= $_COOKIE['site_lang'] ?>/plugins/dropzone/dropzone.min.css" rel="stylesheet" />
    <link href="assets_<?= $_COOKIE['site_lang'] ?>/plugins/dropzone/basic.min.css" rel="stylesheet" />
    <!--<link href="assets_<?= $_COOKIE['site_lang'] ?>/css/receipt_design.css" rel="stylesheet" />	-->




    <style type="text/css">
        body{
            direction: <?= lang('direction') ?> !important;
            text-align: <?= lang('align') ?> !important;
            text-transform: capitalize;
        }
        .top-header .min-cart {
            margin-<?= lang('align_reverse') ?>: 10px !important;
        }
        .dropdown-menu{
        <?= lang('align') ?>: 0  !important;
        <?= lang('align_reverse') ?>:auto !important;
        }
        .custom-control-label:before,
        .custom-control-label:after{
        <?= lang('align_reverse') ?>: auto !important;
        <?= lang('align') ?>: -1.5rem !important;
        }
    </style>
</head>	