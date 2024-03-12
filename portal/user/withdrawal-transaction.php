<?php
$pageName = "Withdawal Transaction";
// include_once("layouts/tranheader.php");
include_once("layouts/header.php");
$user_id = userDetails('id');
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
                                <th>Name</th>
                                <!-- <th>Email</th> -->
                                <th>Reference ID</th>
                                <th>Amount</th>
                                
                                <th>Status</th>
                                <th>Date</th>
                               
                            </tr>
                            </thead>
                            <tbody>
                            <?php
                            $sql="SELECT * FROM withdrawal w LEFT JOIN users u ON w.user_id = u.id order by w.id DESC ";
                            $stmt = $conn->prepare($sql);
                            $stmt->execute();
                            $sn=1;
                            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
                                $wire_status = wireStatus($row['status']);
                                $currency = currency($row);

                                $fullName = $row['firstname']." ".$row['lastname'];
                                ?>
                                <tr>
                                    <td><?= $sn++ ?></td>
                                    <td><?= $fullName ?></td>
                                    <!-- <td><?=$row['acct_email'] ?></td> -->
                                    <td><?= $row['reference_id'] ?></td>
                                    <td><?=$currency.$row['amount'] ?></td>
                                    
                                   
                                    <td><?= $wire_status ?></td>
                                    <td><?= $row['createdAt'] ?></td>
                                    
                                </tr>
                                <?php
                            }
                            ?>
                            </tbody>
                            
                        </table>

                    <div class="d-print-none">
                        <div class="float-end">
                            <a href="javascript:window.print()" class="btn btn-success waves-effect waves-light me-1"><i
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