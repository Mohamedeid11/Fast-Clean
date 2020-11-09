<?php
include("config.php");
if (!loggedin()) {
    header("Location: login.php");
    exit();
}
if (($_SESSION['messages'] != '1')) {
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

            <?php
            if (isset($_POST['submit'])) {
                $name = mysqli_real_escape_string($con, trim($_POST['name']));
                $phone = mysqli_real_escape_string($con, trim($_POST['phone']));
                $email = mysqli_real_escape_string($con, trim($_POST['email']));
                $content = mysqli_real_escape_string($con, trim($_POST['content']));

                $con->query("INSERT INTO `messages` VALUES (NULL, '$name', '$phone', '$email', '$content' , current_timestamp());");

                echo get_success(" Added Successfully ");
            }
            ?>	

            <div class="content-page">
                <!-- Start content -->
                <div class="content">
                    <div class="container">

                        <!-- Page-Title -->
                        <div class="row">
                            <div class="col-sm-12">
                                <h4 class="page-title"> Messages  </h4>
                                <ol class="breadcrumb">
                                    <li><a href="messages_view.php">Messages </a></li>
                                    <li class="active">Add New Message    </li>
                                </ol>
                            </div>
                        </div>
                        <form id="client_address_add" method="POST"  enctype="multipart/form-data" data-parsley-validate novalidate >

                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="card-box">
                                        <h4 class="m-t-0 header-title"><b> Add New message    </b></h4>
                                        <div class="form-group">
                                            <label for="service_name"> Your Name </label>
                                            <input type="text" name="name" parsley-trigger="change"  placeholder="Write Your Name" class="form-control" id="name">
                                        </div>
                                        <div class="form-group">
                                            <label for="service_name"> Phone Number </label>
                                            <input type="number" name="phone" parsley-trigger="change"  placeholder="Write Your Phone Number" class="form-control" id="phone">
                                        </div>
                                        <div class="form-group">
                                            <label for="service_name"> E-Mail </label>
                                            <input type="email" name="email" parsley-trigger="change"  placeholder="Write Your E-Mail" class="form-control" id="email">
                                        </div>
                                        <br />

                                        <div class="form-group">
                                            <label for="content">  Content</label>
                                            <textarea class="form-control" rows="3" name="content"  id='content' minlength="3" maxlength="1000" required=""></textarea>
                                        </div>
                                        <div class="form-group text-right m-b-0">
                                            <button class="btn btn-primary waves-effect waves-light" id="submit" name="submit"> Add </button>
                                            <button type="reset" class="btn btn-default waves-effect waves-light m-l-5"> Cancel </button>
                                        </div>
                                    </div>
                                </div>
                            </div>	
                        </form>

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
                $("#item103").addClass("active");
            });
        </script>

    </body>
</html>