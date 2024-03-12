<?php
$pageName = "Credit Debit Transaction";
//session_start();
// include_once("layouts/tranheader.php");
include_once("layouts/header.php");

//require_once("../include/config.php");

//require_once("../include/userFunction.php");
//require_once('../include/userClass.php');
//$conn = dbConnect();
$acct_id = userDetails('id');
// $crypto_name = cryptoName('crypto_name');



if (!$_SESSION['acct_no']) {
    header("location:../login.php");
    die;
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
    <div class="row layout-top-spacing" id="cancel-row">

    <div class="col-xl-12 col-lg-12 col-sm-12  layout-spacing">
        <div class="widget-content widget-content-area br-6">
            <table id="default-ordering" class="table table-hover" style="width:100%">

                <thead>
                <tr>
                    <th>S/N</th>
                    <th>AMOUNT</th>
                    <th>TYPE</th>
                    <th>SENDER / RECEIVER</th>
                    <th>DESCRIPTION</th>
                    <th>CREATED AT</th>
                    <th>TIME CREATED</th>
                    <th>STATUS</th>
                </tr>
                </thead>
                <tbody>


                <?php

                $sql="SELECT * FROM transactions LEFT JOIN users ON transactions.user_id =users.id WHERE transactions.user_id =:acct_id order by transactions.trans_id DESC";
                $stmt = $conn->prepare($sql);
                $stmt->execute([
                    'acct_id'=>$acct_id
                ]);



                $sn=1;

                while ($result = $stmt->fetch(PDO::FETCH_ASSOC)){
                    $transStatus = transStatus($result);

                    if($result['trans_type'] === '1'){
                        $trans_type = "<span class='text-success'>Credit</span>";
                    }else if($result['trans_type']=== '2'){
                        $trans_type = "<span class='text-danger'>Debit</span>
";
                    }
                    ?>
                    <tr>
                        <td><?= $sn++ ?></td>
                        <td><?=$currency. $result['amount'] ?></td>
                        <td><?= $trans_type ?></td>
                        <td><?= $result['sender_name'] ?></td>
                        <td><?=$result['description'] ?></td>
                        <td><?= $result['created_at'] ?></td>
                        <td><?= $result['time_created'] ?></td>
                        <!--<td><?= $transStatus ?></td>-->
                        <td>Completed</td>

                    </tr>
                    <?php
                }
                ?>
                </tbody>
                <tfoot>
                <tr>
                    <th>S/N</th>
                    <th>AMOUNT</th>
                    <th>TYPE</th>
                    <th>SENDER / RECEIVER</th>
                    <th>DESCRIPTION</th>
                    <th>CREATED AT</th>
                    <th>TIME CREATED</th>
                    <th>STATUS</th>
                </tr>
                </tfoot>
            </table>
            
            <div class="d-print-none">
                                    <div class="float-end">
                                        <a href="javascript:window.print()"
                                            class="btn btn-success waves-effect waves-light me-1"><i
                                                class="fa fa-print"></i> Print Statement</a>
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
include_once("layouts/footer.php");
?>