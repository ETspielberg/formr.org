<form class="form-horizontal" enctype="multipart/form-data" method="post" action="<?php echo admin_url('advanced/content_settings'); ?>">
    <p class="pull-right">
        <input type="submit" name="content_settings" value="Save" class="btn btn-primary save_settings">
    </p>

    <?php
        $val = array_val($settings, 'signup:allow', "true") === "true";
        $checked = $val ? 'checked="checked"' : ''; 
    ?>
    <div class="col-md-12">
        <div class="form-group">
            <div class="form-check">
                <label class="form-check-label" for="about-page-show"> 
                    <input type="hidden" name="signup:allow" value="false" />
                    <input id="about-page-show" class="form-check-input" <?= $checked ?> type="checkbox" value="true" name="signup:allow" />
                    Allow new users to sign-up.
                </label>
              </div>
        </div>
        <div class="form-group">
            <label>Service Message (HTML Content)</label>
            <textarea data-editor="html" placeholder="Message (HTML Content)" name="signup:message" rows="10" cols="80" class="big_ace_editor form-control"><?= h(array_val($settings, 'signup:message')); ?></textarea>
            <p>Message to display to users in case sign-ups are disabled.</p>
        </div>
    </div>
    <div class="clear clearfix"></div>
</form>