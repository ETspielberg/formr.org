<?php $settings = Site::getSettings(); ?>

<footer>
    <div class="container">
        <p class="float-end"><a href="#" style="color:white">Back to top</a></p>
        <a href="https://www.uni-due.de/de/index.php" target="_blank"><img class="d-inline-block align-center" height="50" alt="UB-Logo" src="img/logo_ude_weiss.png" style="padding-right:30px;padding-left:10px" height="50"></a>
        <a href="https://www.uni-due.de/ub/index.php" target="_blank"><img class="d-inline-block align-center" height="50" alt="UB-Logo" src="img/UB_Logo_weiss.png" style="padding-right:30px;padding-left:10px" height="50"></a>
        <a href="/data_protection.php" target="_blank"><img class="d-inline-block align-center" height="50" alt="UB-Logo" src="img/UB_Logo_weiss.png" style="padding-right:30px;padding-left:10px" height="50"></a>
        <span>&copy; UDE &middot; Letzte Änderung: 21.01.2025</span>
    </div>
</footer>

<!-- END #fmr-footer -->
</div>
<!-- END #fmr-page -->

<script id="tpl-feedback-modal" type="text/formr">
    <div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="FormR.org Modal" aria-hidden="true">
		<div class="modal-dialog">                         
			<div class="modal-content">                              
				<div class="modal-header">                                 
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>                                 
					<h3>%{header}</h3>                             
				</div>                             
				<div class="modal-body">%{body}</div>
				<div class="modal-footer">                             
					<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>                         
				</div>                     
			</div>                 
		</div>
    </div>
</script>
<script src="/assets/common/js/bootstrap.bundle.min.js"></script>
</body>
</html>
