<script>(function (H) {
        H.className = H.className.replace(/\bno_js\b/, 'js')
    })(document.documentElement)</script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="UB Surveys">
<title>UB | Surveys</title>
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/carousel.css" rel="stylesheet">
<link rel="stylesheet" href="css/custom.css">


<script>
    window.formr = <?php echo !empty($jsConfig) ? json_encode($jsConfig) : '{}' ?>;
</script>

<?php
foreach ($js as $id => $files) {
    print_scripts($files, $id);
}
?>

<link rel="icon" href="<?php echo site_url('favicon.ico'); ?>">
<link href="/assets/common/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/assets/common/css/carousel.css" rel="stylesheet">
<link rel="stylesheet" href="/assets/common/css/custom.css">
<?php
foreach ($css as $id => $files) {
    print_stylesheets($files, $id);
}
?>