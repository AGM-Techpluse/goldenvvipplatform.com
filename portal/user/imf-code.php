<?php
$pageName = "IMF code";
include_once("layouts/header.php");
include("./userPinfunction.php");


?>

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
        <div class="row layout-top-spacing">
            <div class="col-md-8 offset-md-2 mt-5">
                <div class="card component-card">
                    <div class="card-body">
                        <?php
                        if($_SESSION['wire-transfer']){
                            ?>
                            <div class="user-profile">
                                <div class="row">
                                    <div class="col-md-12">
                                        <h3 class="text-center">IMF CODE VERIFICATION</h3>

                                    </div>
                                </div>
                                <form action="" method="post">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <p class="text-center text-info text-uppercase">HELLO, <?= $fullName?> KINDLY INSERT YOUR IMF CODE TO COMPLETE YOUR TRANSFER. </p>

                                        </div>
                                    </div>
                                    <div class="row mb-4 mt-4">
                                        <div class="col-md-6 ">
                                            <div class="form-group">
                                                <div class="input-group ">
                                                    <input type="number" class="form-control" name="imf_code" placeholder="input code" aria-label="notification" aria-describedby="basic-addon1" required>
                                                </div>
                                            </div>
                                            <div class="row">

                                                <div class="col-md-12">
                                                    <input type="number" value="<?= $temp_trans['amount'] ?>" name="amount" hidden id="">
                                                    <input type="text" value="<?= $temp_trans['bank_name'] ?>" name="bank_name" hidden id="">
                                                    <input type="text" value="<?= $temp_trans['acct_name_id']?>" name="acct_name" hidden id="">
                                                    <input type="number" value="<?= $temp_trans['acct_number'] ?>" name="acct_number" hidden id="">
                                                    <input type="text" value="<?= $temp_trans['acct_type'] ?>" name="acct_type" hidden id="">
                                                    <input type="text" value="<?= $temp_trans['acct_country'] ?>" name="acct_country" hidden id="">
                                                    <input type="text" value="<?= $temp_trans['acct_swift']?>" name="acct_swift" hidden id="">
                                                    <input type="number" value="<?= $temp_trans['acct_routing'] ?>" name="acct_routing" hidden id="">
                                                    <input type="text" value="<?= $temp_trans['acct_remarks'] ?>" name="acct_remarks" hidden id="">
                                                    <input type="number" value="<?= $temp_trans['acct_id'] ?>" name="account_id" hidden>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 ">
                                            <div class="form-group ">
                                                <button class="btn btn-primary col-12" name="imf_submit">Verify IMF Transfer</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <?php
                        }elseif($_SESSION['dom-transfer']){
                            ?>
                            <div class="user-profile">
                                <div class="row">
                                    <div class="col-md-12">
                                        <h3 class="text-center">Verify Transaction Pin</h3>

                                    </div>
                                </div>
                                <form action="" method="post">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <p class="text-center text-info">HELLO, <?= ucwords($fullName)?> KINDLY VALIDATE THE 6 DIGIT OTP SENT TO YOUR <?= $row['acct_phone']?> OR <?= $row['acct_email']?>


                                            </p>

                                        </div>
                                    </div>
                                    <div class="row mb-4 mt-4">
                                        <div class="col-md-6 ">
                                            <div class="form-group">
                                                <div class="input-group ">
                                                    <input type="number" class="form-control" name="imf_code" placeholder="input code" aria-label="notification" aria-describedby="basic-addon1" required>
                                                </div>
                                            </div>
                                            <div class="row">

                                                <div class="col-md-12">
                                                    <input type="number" value="<?= $temp_trans['amount'] ?>" name="amount" hidden id="">
                                                    <input type="text" value="<?= $temp_trans['bank_name'] ?>" name="bank_name" hidden id="">
                                                    <input type="text" value="<?= $temp_trans['acct_name_id']?>" name="acct_name" hidden id="">
                                                    <input type="number" value="<?= $temp_trans['acct_number'] ?>" name="acct_number" hidden id="">
                                                    <input type="text" value="<?= $temp_trans['acct_type'] ?>" name="acct_type" hidden id="">
                                                    <input type="text" value="<?= $temp_trans['trans_type'] ?>" name="trans_type" hidden id="">
                                                    <input type="text" value="<?= $temp_trans['acct_remarks'] ?>" name="acct_remarks" hidden id="">
                                                    <input type="number" value="<?= $temp_trans['acct_id'] ?>" name="account_id" hidden>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 ">
                                            <div class="form-group ">
                                                <button class="btn btn-primary col-12" name="submit-dom">Submit</button>

                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <?php
                        }
                        ?>
                    </div>

                </div>
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
            <?php
            include_once("layouts/footer.php");
            ?>
