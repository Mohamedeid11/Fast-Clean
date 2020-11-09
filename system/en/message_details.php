<?php
include("config.php");
if (!loggedin()) {
    header("Location: login.php");
    exit();
}if (($_SESSION['messages'] != '1')) {
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
                                <h4 class="page-title">View Messages</h4>
                                <ol class="breadcrumb">
                                    <li><a href="messages_view.php">Messages</a></li>
                                    <li class="active">View Messages </li>
                                </ol>
                            </div>
                        </div>

                        <?php
                        if ($_GET['messages_id']) {

                            $messages_id = $_GET['messages_id'];

                            $query_select = $con->query("SELECT * FROM `messages` WHERE `id` = '{$messages_id}' LIMIT 1");
                            $row_select = mysqli_fetch_array($query_select);
                            $name =$row_select['name'];
                            $phone =$row_select['phone'];
                            $email =$row_select['email'];
                            $content = $row_select['content'];
                            $date = $row_select['date'];

                            if ($query_select) {
                                ?>
                                <div class="panel">
                                    <div class="panel-body">
                                        <div class="">
                                            <div class="table-responsive m-t-20">
                                                <table class="table">
                                                    <tbody>
                                                    <tr>
                                                        <td> Sender Name</td>
                                                        <td>
                                                            <?php echo $name; ?>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td> Sender Phone </td>
                                                        <td>
                                                            <?php echo $phone; ?>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td> Sender E-Mail</td>
                                                        <td>
                                                            <?php echo $email; ?>
                                                        </td>
                                                    </tr>
                                                        <tr>
                                                            <td> Content</td>
                                                            <td>
                                                                <?php echo $content; ?>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td> Sent Date  </td>
                                                            <td>
                                                                <?php echo $date; ?>
                                                            </td>
                                                        </tr>

                                                    </tbody>
                                                </table>
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



        <!-- End Right content here -->

        <!-- Right Sidebar -->
        <div class="side-bar right-bar nicescroll">
            <?php include("include/rightbar.php"); ?>
        </div>
        <!-- /Right-bar -->
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