<?php header('Content-type: text/html; charset=utf-8'); ?><!DOCTYPE html>
<html class="no_js">
    <head>
        <?php Template::loadChild('public/head') ?>
    </head>

    <body>

        <div id="fmr-page" class="<?php echo!empty($bodyClass) ? $bodyClass : 'body'; ?>">

            <section id="fmr-header" class="<?php echo!empty($headerClass) ? $headerClass : 'header'; ?>">
                <div class="container">
                    <?php Template::loadChild('public/navigation'); ?>
                </div>
            </section>



