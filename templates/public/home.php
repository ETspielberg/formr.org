<html>
<?php Template::loadChild('public/ude_head') ?>
<body>
<header>
    <?php Template::loadChild('public/ude_banner'); ?>
    <?php Template::loadChild('public/ude_navigation'); ?>
</header>
<main>
    <div class="jumbotron">
        <div class="container">
            <div id="wrapper" style="display: flex;">
                <div style="padding-right:1em">
                    <img class="rounded-circle" src="assets/common/img/surveys_logo_mockup.png" alt="Generic placeholder image"
                        width="150" height="150" style="margin-bottom: 1em;background-color: white;">
                </div>

                <div style="align-items: flex-start;display: flex;flex-direction: column;justify-content: center;">
                    <h2 style="text-align: left;margin-bottom: -5px;"><i>UB | Surveys</i></h2>
                    <h1 class="display-3" style="font-weight: 400;text-align: left;">From <span style="font-weight: 600;">Feedback</span> to <span style="font-weight: 600;">Insights</span></h1>
                </div>
            </div>
        </div>
    </div>

    <div id="myCarousel" class="carousel slide mb-6" data-bs-ride="carousel" data-bs-interval="5000">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true"
                    aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="container">
                    <img class="first-slide app-logo" src="assets/common/img/wissenschaftsmythen_header.png" alt="First slide">

                    <div class="carousel-caption">
                        <h1>Wissenschaftsmythen – Wahr oder falsch?</span></h1>
                        <p><strong>FAKT oder FAKE? – (er)kennst du den Unterschied?</strong></p>
                        <p>Ist Spinat wirklich ein Eisenwunder? War Napoleon klein? Teste dein Alltagswissen und erfahre, was hinter bekannten Mythen steckt.</p>
                        <p><a class="btn btn-lg btn-primary" href="/wissenschaftsmythen"
                            target="_blank" role="button">&raquo; Zum Quiz</a></p>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <img class="second-slide app-logo" src="assets/common/img/fake-news_header.png" alt="Second slide">
                <div class="container">
                    <div class="carousel-caption">
                        <h1>Fake News erkennen – Spiel für Profis!</h1>
                        <p><strong>FAKT oder FAKE? – (er)kennst du den Unterschied?</strong></p>
                        <p>Kannst du echte Nachrichten von Desinformation unterscheiden? Finde heraus, wie gut du beim Faktenchecken bist.</p>
                        <p><a class="btn btn-lg btn-primary" href="/fake-news"
                            target="_blank" role="button">&raquo; Zum Quiz</a></p>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <img class="third-slide app-logo" src="assets/common/img/formr_logo_transparent.png" alt="Third slide" style="background-color: #333333">
                <div class="container">
                    <div class="carousel-caption">
                        <h1>Das <strong>formr</strong> Survey Framework</h1>
                        <p>Chain simple surveys into long runs, use the power of R to generate pretty feedback and complex designs</p>
                        <p><a class="btn btn-lg btn-primary" href="https://formr.org/"
                            target="_blank">&raquo;
                                Zum Projekt
                            </a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <div class="container apps">
        <!-- Three columns of text below the carousel -->
        <div class="row">
            <?php if (!empty($runs) && is_array($runs)) : ?>
            <?php foreach ($runs as $run) : ?>
                <div class="col-lg-4">
                    <div class="studies-card">
                        <h2 class="fw-normal"><a
                                    href="<?php echo run_url($run['name']); ?>"><?php echo($run['title'] ? $run['title'] : $run['name']); ?></a>
                        </h2>
                        <div class="blurb col-md-12">
                            <?php echo !empty($run['public_blurb_parsed']) ? $run['public_blurb_parsed'] : '<p class="empty-study-blurb">&nbsp;</p>' ?>
                        </div>
                        <p><a href="<?php echo run_url($run['name']); ?>" class="btn btn-secondary">Participate <i
                                        class="fa fa-users"></i></a></p>
                    </div>
                </div>
            <?php endforeach; ?>
            <?php else : ?>
                <div class="col-12">
                    <p>Derzeit sind keine Umfragen frei verfügbar.</p>
                </div>
            <?php endif; ?>
        </div>
    </div>
</main>
    <?php Template::loadChild('public/ude_footer'); ?>
    <script src="/assets/common/js/bootstrap.bundle.min.js"></script>
</body>
</html>
