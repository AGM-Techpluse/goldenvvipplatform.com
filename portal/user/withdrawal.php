<?php

$pageName = "Withdrawal";
include("../include/vendor/autoload.php");
include_once("layouts/header.php");
//require_once("../include/config.php");
//require_once("../include/userFunction.php");
//require_once('../include/userClass.php');


$email = $row['acct_email'];


if(isset($_POST['withdraw'])){
    // $user_id = $_POST['user_id'];
    // $sender_name = $_POST['sender_name'];
    // $amount = $_POST['amount'];
    // $description = $_POST['description'];
    // $created_at = $_POST['created_at'];
    // $time_created = $_POST['time_created'];
    $user_id = userDetails('id');
    $amount = $_POST['amount'];
    $withdraw_method = $_POST['withdraw_method'];
    $wallet_address = $_POST['wallet_address'];

    $trans_type = 2;
    $checkUser = $conn->query("SELECT * FROM users WHERE id='$user_id'");
    $result = $checkUser->fetch(PDO::FETCH_ASSOC);

    if($amount > $result['acct_balance']){
        toast_alert('error','Insufficient Balance');
    }else {




        $available_balance = ($result['acct_balance'] - $amount);
//        $amount-=$result['acct_balance'];

        $sql = "UPDATE users SET acct_balance=:available_balance WHERE id=:user_id";
        $addUp = $conn->prepare($sql);
        $addUp->execute([
            'available_balance' => $available_balance,
            'user_id'=>$user_id
        ]);

            $trans_id = uniqid();
            $sql = "INSERT INTO withdrawal (user_id,amount,withdraw_method,wallet_address,reference_id,trans_type) VALUES(:user_id,:amount,:withdraw_method,:wallet_address,:reference_id,:trans_type)";
            $stmt = $conn->prepare($sql);
            $stmt->execute([
                'user_id'=>$user_id,
                'amount' => $amount,
                'withdraw_method' => $withdraw_method,
                'wallet_address' => $wallet_address,
                'reference_id'=>$trans_id,
                'trans_type' => $trans_type,
            ]);

            $full_name = $user['firstname']. " ". $user['lastname'];
                        // $APP_URL = APP_URL;
                        $APP_NAME = WEB_TITLE;
                        $APP_URL = WEB_URL;
             $user_email = $user['acct_email'];

             $message = $sendMail->WithdrawMsg($currency, $full_name, $amount, $withdraw_method, $wallet_address, $APP_NAME);


             $subject = "Withdrawal Notification". "-". $APP_NAME;
             $email_message->send_mail($user_email, $message, $subject);

             $subject = "User Withdrawal Notification". "-". $APP_NAME;
             $email_message->send_mail(WEB_EMAIL, $message, $subject);

        if (true) {
            toast_alert('success', 'Your Withdrawal has been processed', 'Pending');
        } else {
            toast_alert('error', 'Sorry Something Went Wrong');
        }
        
            // header("Location:./withdrawal-transaction.php");
            // exit;
        
    }
}


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
            <div class="col-md-8 offset-md-2">
                <div class="card component-card">
                    <div class="card-body">
                        <div class="user-profile">
                            <div class="row">
                                <div class="col-md-12">
                                    <?php
                                    if($acct_stat === 'active'){
                                    ?>
                                    <form method="POST"  enctype="multipart/form-data">
                                        <p>Crypto Withdrawal</p>
                                        <div class="form-group mb-4 mt-4">
                                            <label for="">Amount</label>
                                            <div class="input-group ">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text" id="basic-addon1"><svg
                                                                xmlns="http://www.w3.org/2000/svg" width="24"
                                                                height="24" viewBox="0 0 24 24" fill="none"
                                                                stroke="currentColor" stroke-width="2"
                                                                stroke-linecap="round" stroke-linejoin="round"
                                                                class="feather feather"><line x1="12" y1="1"
                                                                                                          x2="12"
                                                                                                          y2="23"></line><path
                                                                    d="M17 5H9.5a3.5 3.5 0 0 0 0 7h5a3.5 3.5 0 0 1 0 7H6"></path></svg></span>
                                                </div>

                                                <input type="number" class="form-control" name="amount" placeholder="Amount"
                                                       aria-label="notification" aria-describedby="basic-addon1">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">

                                                <div class="form-group mb-4 mt-4">
                                                    <label for="">Withdrawal Type</label>
                                                    <div class="input-group">
                                                       <select name="withdraw_method" required class='selectpicker' onchange="crypto_type(this.value)" data-width='100%'>
                                                           <option>Select</option>
                                                           <?php
                                                                $withdrawal_methods = array(
                                                                    'Skrill',
                                                                    'PayPal',
                                                                    'BTC',
                                                                    'USDT',
                                                                    'ETH',
                                                                    'Revolut',
                                                                    'Payoneer'
                                                                );
                                                    
                                                                foreach ($withdrawal_methods as $method) {
                                                                    ?>
                                                                    <option value="<?= $method ?>"><?= ucwords($method) ?></option>
                                                                    <?php
                                                                }
                                                                ?>
                                                       </select>




                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group mb-4 mt-4">
                                                    <label for="">Email / Wallet Address</label>
                                                    <div class="input-group ">
                                                        <input type="text" class="form-control" name="wallet_address"  required placeholder="Wallet Address"
                                                               aria-label="notification" aria-describedby="basic-addon1">
                                                         </div>
                                                </div>
                                            </div>
                                        </div>


                                        <div class="row">
                                            <div class="col-md-12 text-center">
                                                <button class="btn btn-primary mb-2 mr-2" name="withdraw" >
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-log-out"><path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path>
                                                    <polyline points="16 17 21 12 16 7"></polyline><line x1="21" y1="12" x2="9" y2="12"></line></svg> Withdraw Funds</button>


                                                    <a href="./bank-withdraw.php" class="btn btn-danger mb-2 mr-2" ><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-log-out"><path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path>
                                                    <polyline points="16 17 21 12 16 7"></polyline><line x1="21" y1="12" x2="9" y2="12"></line></svg> Use Bank Withdrawal</a>
                                            </div>
                                        </div>
                                </div>
                                        
                                </form>
                            </div>
                                <?php
                                }else{
                                ?>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div  class="alert custom-alert-1 mb-4 bg-danger border-danger" role="alert">

                                            <div class="media">
                                                <div class="alert-icon">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-alert-circle"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="8" x2="12" y2="12"></line><line x1="12" y1="16" x2="12" y2="16"></line></svg>
                                                </div>
                                                <div class="media-body">
                                                    <div class="alert-text">
                                                        <strong>Warning! </strong><span> Account on <span class="text-uppercase "><b>hold</b></span> contact support.</span>
                                                    </div>
                                                    <div class="alert-btn">
                                                        <a class="btn btn-default btn-dismiss" href="mailto:<?=$url_email?>">Contact Us</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </div>
                            <?php
                            }
                            ?>

                            </div>
                </div>
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
    include_once('layouts/footer.php')
    ?>
