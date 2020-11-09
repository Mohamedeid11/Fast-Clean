<script>
    var resizefunc = [];
</script>

<!-- jQuery  -->
<script src="assets_<?= $_COOKIE['site_lang'] ?>/js/jquery.min.js"></script>

<script src="assets_<?= $_COOKIE['site_lang'] ?>/js/custom.js"></script>

<script src="assets_<?= $_COOKIE['site_lang'] ?>/js/ion.sound.js"></script>

<script src="assets_<?= $_COOKIE['site_lang'] ?>/js/bootstrap.min.js"></script>


<script src="assets_<?= $_COOKIE['site_lang'] ?>/plugins/bootbox/bootbox.min.js"></script>
<script src="assets_<?= $_COOKIE['site_lang'] ?>/plugins/bootbox/ui-alert-dialog-api.js"></script>

<script src="assets_<?= $_COOKIE['site_lang'] ?>/js/detect.js"></script>
<script src="assets_<?= $_COOKIE['site_lang'] ?>/js/fastclick.js"></script>
<script src="assets_<?= $_COOKIE['site_lang'] ?>/js/jquery.slimscroll.js"></script>
<script src="assets_<?= $_COOKIE['site_lang'] ?>/js/jquery.blockUI.js"></script>
<script src="assets_<?= $_COOKIE['site_lang'] ?>/js/waves.js"></script>
<script src="assets_<?= $_COOKIE['site_lang'] ?>/js/wow.min.js"></script>
<script src="assets_<?= $_COOKIE['site_lang'] ?>/js/jquery.nicescroll.js"></script>
<script src="assets_<?= $_COOKIE['site_lang'] ?>/js/jquery.scrollTo.min.js"></script>



<script src="assets_<?= $_COOKIE['site_lang'] ?>/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>
<script src="assets_<?= $_COOKIE['site_lang'] ?>/plugins/switchery/dist/switchery.min.js"></script>
<script type="text/javascript" src="assets_<?= $_COOKIE['site_lang'] ?>/plugins/multiselect/js/jquery.multi-select.js"></script>
<script type="text/javascript" src="assets_<?= $_COOKIE['site_lang'] ?>/plugins/jquery-quicksearch/jquery.quicksearch.js"></script>
<script src="assets_<?= $_COOKIE['site_lang'] ?>/plugins/select2/select2.min.js" type="text/javascript"></script>
<script src="assets_<?= $_COOKIE['site_lang'] ?>/plugins/bootstrap-select/dist/js/bootstrap-select.min.js" type="text/javascript"></script>
<script src="assets_<?= $_COOKIE['site_lang'] ?>/plugins/bootstrap-filestyle/src/bootstrap-filestyle.min.js" type="text/javascript"></script>
<script src="assets_<?= $_COOKIE['site_lang'] ?>/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js" type="text/javascript"></script>
<script src="assets_<?= $_COOKIE['site_lang'] ?>/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>		
<script src="assets_<?= $_COOKIE['site_lang'] ?>/plugins/autocomplete/jquery-ui.min.js" type="text/javascript"></script>		

<script src="assets_<?= $_COOKIE['site_lang'] ?>/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js" type="text/javascript"></script>		
<script src="assets_<?= $_COOKIE['site_lang'] ?>/plugins/switchery/js/switchery.min.js"></script>


<script src="assets_<?= $_COOKIE['site_lang'] ?>/plugins/notifyjs/dist/notify.min.js"></script>
<script src="assets_<?= $_COOKIE['site_lang'] ?>/plugins/notifications/notify-metro.js"></script>		

<script src="assets_<?= $_COOKIE['site_lang'] ?>/plugins/peity/jquery.peity.min.js"></script>

<!-- jQuery  -->
<script src="assets_<?= $_COOKIE['site_lang'] ?>/plugins/waypoints/lib/jquery.waypoints.js"></script>
<script src="assets_<?= $_COOKIE['site_lang'] ?>/plugins/counterup/jquery.counterup.min.js"></script>



<script src="assets_<?= $_COOKIE['site_lang'] ?>/plugins/morris/morris.min.js"></script>
<script src="assets_<?= $_COOKIE['site_lang'] ?>/plugins/raphael/raphael-min.js"></script>

<script src="assets_<?= $_COOKIE['site_lang'] ?>/plugins/jquery-knob/jquery.knob.js"></script>
<!--<script src="assets_<?= $_COOKIE['site_lang'] ?>/plugins/dropzone/dropzone.js"></script>-->
<script src="assets_<?= $_COOKIE['site_lang'] ?>/plugins/dropzone/dropzone.min.js"></script>


<script src="assets_<?= $_COOKIE['site_lang'] ?>/js/jquery.core.js"></script>
<script src="assets_<?= $_COOKIE['site_lang'] ?>/js/jquery.app.js"></script>



<script type="text/javascript">
    jQuery(document).ready(function ($) {
        $('.counter').counterUp({
            delay: 100,
            time: 1200
        });

        $(".knob").knob();

    });
</script>


<script type="text/javascript" src="assets_<?= $_COOKIE['site_lang'] ?>/plugins/parsleyjs/dist/parsley.min.js"></script>


<script type="text/javascript">
//    $(document).ready(function () {
//        $('form').parsley();
//    });
</script>	


<script type="text/javascript" src="assets_<?= $_COOKIE['site_lang'] ?>/plugins/isotope/dist/isotope.pkgd.min.js"></script>
<script type="text/javascript" src="assets_<?= $_COOKIE['site_lang'] ?>/plugins/magnific-popup/dist/jquery.magnific-popup.min.js"></script>

<script type="text/javascript">
    $(window).load(function () {
        var $container = $('.portfolioContainer');
        $container.isotope({
            filter: '*',
            animationOptions: {
                duration: 750,
                easing: 'linear',
                queue: false
            }
        });

        $('.portfolioFilter a').click(function () {
            $('.portfolioFilter .current').removeClass('current');
            $(this).addClass('current');

            var selector = $(this).attr('data-filter');
            $container.isotope({
                filter: selector,
                animationOptions: {
                    duration: 750,
                    easing: 'linear',
                    queue: false
                }
            });
            return false;
        });
    });
    $(document).ready(function () {
        $('.image-popup').magnificPopup({
            type: 'image',
            closeOnContentClick: true,
            mainClass: 'mfp-fade',
            gallery: {
                enabled: true,
                navigateByImgClick: true,
                preload: [0, 1] // Will preload 0 - before current, and 1 after the current image
            }
        });
    });
</script>		


<script>
    jQuery(document).ready(function () {

        //advance multiselect start
        $('#my_multi_select3').multiSelect({
            selectableHeader: "<input type='text' class='form-control search-input' autocomplete='off' placeholder='search...'>",
            selectionHeader: "<input type='text' class='form-control search-input' autocomplete='off' placeholder='search...'>",
            afterInit: function (ms) {
                var that = this,
                        $selectableSearch = that.$selectableUl.prev(),
                        $selectionSearch = that.$selectionUl.prev(),
                        selectableSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selectable:not(.ms-selected)',
                        selectionSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selection.ms-selected';

                that.qs1 = $selectableSearch.quicksearch(selectableSearchString)
                        .on('keydown', function (e) {
                            if (e.which === 40) {
                                that.$selectableUl.focus();
                                return false;
                            }
                        });

                that.qs2 = $selectionSearch.quicksearch(selectionSearchString)
                        .on('keydown', function (e) {
                            if (e.which == 40) {
                                that.$selectionUl.focus();
                                return false;
                            }
                        });
            },
            afterSelect: function () {
                this.qs1.cache();
                this.qs2.cache();
            },
            afterDeselect: function () {
                this.qs1.cache();
                this.qs2.cache();
            }
        });

        // Select2
        $(".select2").select2();

        $(".select2-limiting").select2({
            maximumSelectionLength: 2
        });

        $('.selectpicker').selectpicker();
        $(":file").filestyle({input: false});
    });

    //Bootstrap-TouchSpin
    $(".vertical-spin").TouchSpin({
        verticalbuttons: true,
        verticalupclass: 'ion-plus-round',
        verticaldownclass: 'ion-minus-round'
    });
    var vspinTrue = $(".vertical-spin").TouchSpin({
        verticalbuttons: true
    });
    if (vspinTrue) {
        $('.vertical-spin').prev('.bootstrap-touchspin-prefix').remove();
    }

    $("input[name='demo1']").TouchSpin({
        min: 0,
        max: 100,
        step: 0.1,
        decimals: 2,
        boostat: 5,
        maxboostedstep: 10,
        postfix: '%'
    });
    $("input[name='demo2']").TouchSpin({
        min: -1000000000,
        max: 1000000000,
        stepinterval: 50,
        maxboostedstep: 10000000,
        prefix: '$'
    });
    $("input[name='demo3']").TouchSpin();
    $("input[name='demo3_21']").TouchSpin({
        initval: 40
    });
    $("input[name='demo3_22']").TouchSpin({
        initval: 40
    });

    $("input[name='demo5']").TouchSpin({
        prefix: "pre",
        postfix: "post"
    });
    $("input[name='demo0']").TouchSpin({});


    //Bootstrap-MaxLength
    $('input#defaultconfig').maxlength()

    $('input#thresholdconfig').maxlength({
        threshold: 20
    });

    $('input#moreoptions').maxlength({
        alwaysShow: true,
        warningClass: "label label-success",
        limitReachedClass: "label label-danger"
    });

    $('input#alloptions').maxlength({
        alwaysShow: true,
        warningClass: "label label-success",
        limitReachedClass: "label label-danger",
        separator: ' out of ',
        preText: 'You typed ',
        postText: ' chars available.',
        validate: true
    });

    $('textarea#textarea').maxlength({
        alwaysShow: true
    });

    $('input#placement').maxlength({
        alwaysShow: true,
        placement: 'top-left'
    });
</script>

<!-- Examples -->
<script src="assets_<?= $_COOKIE['site_lang'] ?>/plugins/magnific-popup/dist/jquery.magnific-popup.min.js"></script>
<script src="assets_<?= $_COOKIE['site_lang'] ?>/plugins/jquery-datatables-editable/jquery.dataTables.js"></script> 
<script src="assets_<?= $_COOKIE['site_lang'] ?>/plugins/datatables1/dataTables.bootstrap.js"></script>
<script src="assets_<?= $_COOKIE['site_lang'] ?>/plugins/tiny-editable/mindmup-editabletable.js"></script>
<script src="assets_<?= $_COOKIE['site_lang'] ?>/plugins/tiny-editable/numeric-input-example.js"></script>


<script src="assets_<?= $_COOKIE['site_lang'] ?>/pages/datatables.editable.init.js"></script>

<script>
    $('#mainTable').editableTableWidget().numericInputExample().find('td:first').focus();

</script>

<!-- Sweet-Alert  -->
<script src="assets_<?= $_COOKIE['site_lang'] ?>/plugins/sweetalert/dist/sweetalert.min.js"></script>
<script src="assets_<?= $_COOKIE['site_lang'] ?>/pages/jquery.sweet-alert.init.js"></script>


