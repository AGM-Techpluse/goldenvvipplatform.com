<?php
//session_start();
$pageName = "Account Manager";
include_once("layouts/header.php");
//require_once("../include/config.php");
//require_once("../include/userFunction.php");
//require_once('../include/userClass.php');
$acct_id = userDetails('id');



if (!$_SESSION['acct_no']) {
    header("location:../login.php");
    die;
}





?>

<!--  BEGIN CONTENT AREA  -->
<div id="content" class="main-content">
      <!--Google translate-->
    <div id="google_translate_element"></div>
<script>
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en'}, 'google_translate_element');
}
</script>
<script src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
    <!--End of google translate-->
    <div class="layout-px-spacing">

        <div class="account-settings-container layout-top-spacing">

            <div class="account-content">
                <div class="scrollspy-example" data-spy="scroll" data-target="#account-settings-scroll" data-offset="-100">
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 layout-spacing">
                            <form id="general-info" class="section general-info" enctype="multipart/form-data" method="POST">

                                <div class="info">
                                    <h6 class="">Personal Account Manager</h6>
                                    <div class="row">
                                        <div class="col-lg-11 mx-auto">
                                            <div class="row">
                                                <div class="col-xl-2 col-lg-12 col-md-4 text-center">
                                                    <div class="upload mt-4 pr-md-4">
                                                       <center>
                                                           <input type="file" class="dropify" data-default-file="/assets/profile/<?= $row['mgr_image']?>" name="mgr_image" data-max-file-size="2M" / disabled>
                                                           
                                                           <!--<img src="/assets/profile/<?= $row['mgr_image']?>" class="dropify">-->
                                                       </center>
                                                        <p class="mt-2"><i class="flaticon-cloud-upload mr-1"></i>Account Manager</p>
                                                       
                                                    </div>
                                                </div>
                                                <div class="col-xl-10 col-lg-12 col-md-8 mt-md-0 mt-4">
                                                    <div class="form">
                                                        <div class="row">
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label for="fullName">Account Manager </label>
                                                                    
                                                                    <h5><?= $row['mgr_name'] ?></h5>
                                                                    
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label for="profession">Account Manager Contact</label>
                                                                     <!--<h5 class="text-danger"><?= $row['mgr_no'] ?></h5>-->
                                                                     
                                                                      <h5><?= $row['mgr_no'] ?></h5>
                                                                    
                                                                    <!--<input type="text" class="form-control mb-4" id="mgr_no" placeholder="<?= $row['mgr_no'] ?>" value="<?= $row['mgr_no'] ?>" readonly>-->
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label for="fullName">Account Manager Email</label>
                                                                    <h5><?= $row['mgr_email'] ?></h5>
                                                                    
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label for="profession">Account Creation</label>
                                                                    
                                                                     <h5><?= $row['createdAt'] ?></h5>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label for="fullName">Account Type</label>
                                                                    <h5><?= $row['acct_type'] ?></h5>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label for="profession">Account Limits</label>
                                                                    <h5> <?php echo $currency?> <?= $row['acct_limit'] ?></h5>
                                                                </div>
                                                            </div>
                                                        </div>




                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>

                   
<!-- Smartsupp Live Chat script -->
<script type="text/javascript">
var _smartsupp = _smartsupp || {};
_smartsupp.key = 'e26e8cbc5ebda0f0b62cc44b64db2ae78df8f667';
window.smartsupp||(function(d) {
  var s,c,o=smartsupp=function(){ o._.push(arguments)};o._=[];
  s=d.getElementsByTagName('script')[0];c=d.createElement('script');
  c.type='text/javascript';c.charset='utf-8';c.async=true;
  c.src='https://www.smartsuppchat.com/loader.js?';s.parentNode.insertBefore(c,s);
})(document);
</script>
<noscript> Powered by <a href=“https://www.smartsupp.com” target=“_blank”>Smartsupp</a></noscript>
                   
                    

                    </div>
            </div>
            </div>




<?php
include_once("layouts/footer.php");
?>
