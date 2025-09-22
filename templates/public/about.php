<?php
Template::loadChild('public/header');
?>

<div class="jumbotron">
    <div class="container">
        <div id="wrapper" style="display: flex;">
            <div style="padding-right:1em">
                <img class="rounded-circle" src="img/bibliometrie_square.png" alt="Generic placeholder image" width="150" height="150" style="margin-bottom: 1em;background-color: white;">
            </div>

            <div style="align-items: flex-start;display: flex;flex-direction: column;justify-content: center;">
                <h2 style="text-align: left;margin-bottom: -5px;"><i>UB | Surveys</i></h2>
                <h1 class="display-3" style="font-weight: 400;text-align: left;">From <span style="font-weight: 600;">Publications</span> to <span style="font-weight: 600;">Umfragen</span></h1>
            </div>
        </div>
    </div>
</div>
<div id="myCarousel" class="carousel slide mb-6" data-bs-ride="carousel" data-bs-interval="5000">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <div class="container">
                <img class="first-slide app-logo" src="img/Gender-Publication-Gap_Logo.svg" alt="First slide">

                <div class="carousel-caption">
                    <h1>Gender Publication Gap App</span></h1>
                    <p>Eine Analyse der Unterschiede im Publikationsoutput von Männern und Frauen an der UDE</p>
                    <p><a class="btn btn-lg btn-primary" href="https://insights.ub.uni-due.de/gender-gap-app/" target="_blank" role="button">&raquo; Zum Dashboard</a></p>
                </div>
            </div>
        </div>
        <div class="carousel-item">
            <img class="second-slide app-logo" src="img/biblio_reports_icon.png" alt="Second slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>BiblioReports</h1>
                    <p>Bibliometrische Reports. Jetzt. Nach Ihren Wünschen. Auf dem neuesten Stand.</p>
                    <p><a class="btn btn-lg btn-primary" href="https://insights.ub.uni-due.de/biblio-reports/" target="_blank" role="button">&raquo; Zum Dashboard</a></p>
                </div>
            </div>
        </div>
        <div class="carousel-item">
            <img class="third-slide app-logo" src="img/deal_icon.png" alt="Third slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Der freie unabhängige Calculator für Kosten - DEAL</h1>
                    <p>Eine Analyse hinsichtlich der möglichen Kostenentwicklung durch DEAL-Verträge</p>
                    <p><a class="btn btn-lg btn-primary" href="https://insights.ub.uni-due.de/deal-predictions/"  target="_blank">&raquo; Zum Dashboard</a></p>
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
<!-- App overview messaging and featurettes
  ================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container apps">

    <!-- Three columns of text below the carousel -->
    <div class="row">
        <div class="col-lg-4">
            <img class="rounded-circle" src="img/gender-publication-gap_square.png" alt="Generic placeholder image" width="140" height="140"  style="background-color: white;">
            <br><span style="background-color: #004c93; color: white; padding: 2px 8px; border-radius: 15px; font-size: 12px;">UDE-intern</span>
            <h2 class="fw-normal">UDE Gender Publication Gap App</h2>
            <p>Eine Analyse der Unterschiede im Publikationsoutput von Männern und Frauen anhand der in der Universitätsbibliographie verzeichneten Publikationen, präsentiert von der Universitätsbibliothek Duisburg-Essen</p>
            <p><a class="btn btn-secondary" href="https://insights.ub.uni-due.de/gender-gap-app/" target="_blank" role="button">zur App &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <img class="rounded-circle" src="img/deal_square.png" alt="Generic placeholder image" width="140" height="140" style="background-color: white;">
            <br><span style="background-color: #61a27c; color: white; padding: 2px 8px; border-radius: 15px; font-size: 12px;">offen für alle</span>
            <h2 class="fw-normal">DEAL<br>Vorhersage-Tool</h2>
            <p>Eine Analyse hinsichtlich der möglichen Publikationszahlen und Kostenentwicklung durch DEAL-Verträge anhand des bisherigen Publikationsverhaltens. </p>
            <p><a class="btn btn-secondary" href="https://insights.ub.uni-due.de/deal-predictions/" target="_blank" role="button">zur App &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <img class="rounded-circle" src="img/biblio_reports_square.png" alt="Generic placeholder image" width="140" height="140" style="background-color: white;">
            <br><span style="background-color: #ec7206; color: white; padding: 2px 8px; border-radius: 15px; font-size: 12px;">interner Beta-Test</span>
            <h2 class="fw-normal">BiblioReports App</h2>
            <p>Eine interaktive App zur Erstellung von individuellen und DORA-kompatiblen bibliometrischen Analysen basierend auf freien Daten ganz nach Ihren Wünschen.</p>
            <p><a class="btn btn-secondary" href="https://insights.ub.uni-due.de/biblio-reports/" target="_blank" role="button">zur App &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <img class="rounded-circle" src="img/verlagsabfrage_square.png" alt="Generic placeholder image" width="140" height="140" style="background-color: white;">
            <br><span style="background-color: #b8103b; color: white; padding: 2px 8px; border-radius: 15px; font-size: 12px;">UB-intern</span>
            <h2 class="fw-normal">Verlagsabfrage-Tool</h2>
            <p>Abfrage und Überblick über UDE-Publikationen in bestimmten Zeitschriftenlisten, z.B. von spezifischen Verlagen. </p>
            <p><a class="btn btn-secondary" href="https://insights.ub.uni-due.de/verlagsabfrage-tool/" target="_blank" role="button">zur App &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <img class="rounded-circle" src="img/anfragen_square.png" alt="Generic placeholder image" width="140" height="140" style="background-color: white;">
            <br><span style="background-color: #004c93; color: white; padding: 2px 8px; border-radius: 15px; font-size: 12px;">UDE-intern</span>
            <h2 class="fw-normal">Analysen auf Anfrage</h2>
            <p>Bei Bedarf erstellen wir gerne weitere anlassbezogene individuelle Analysen auf Anfrage (beispielsweise für Förderanträge oder Bewerbungsverfahren).</p>
            <p><a class="btn btn-secondary" href="mailto:bibliometrie.ub@uni-due.de" target="_blank" role="button">Sprechen Sie uns an!</a></p>
        </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->


    <!-- START THE FEATURETTES -->

    <hr class="featurette-divider">

    <div class="row featurette">
        <div class="col-md-7">
            <h2 class="featurette-heading fw-normal lh-1">BiblioReports <span class="text-body-secondary">im Beta-Test</span></h2>
            <p class="lead">Die neueste Entwicklung des UDE-Bibliometrie-Team, die BiblioReports App zur Erstellung von individuellen DORA-kompatiblen biliometrischen Reports befindet sich nun in der Beta-Testphase. Ziel des Tests ist es, auf inhaltlicher Ebene Feedback aus möglichst vielen verschiedenen Perspektiven zu erhalten und auf technischer Ebene fehleranfällige Sonderfälle zu identifizieren und zu beheben.</p>
        </div>
        <div class="col-md-5">
            <img class="featurette-image img-fluid mx-auto" src="img/BiblioReports_collabs.gif" alt="Generic placeholder image">
        </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
        <div class="col-md-7 order-md-2">
            <h2 class="featurette-heading fw-normal lh-1">Vorhersage von Publikationszahlen und -kosten</h2>
            <p class="lead">Bei der Bewertung von Transformationsverträgen wie den DEAL-Verträgen mit Elsevier, Wiley und Springer Nature ist die Frage, wie hoch die Publikationszahlen und die damit verbundenen Kosten in den nächsten Jahren sein werden von großer Bedeutung für die Finanzplanung. Das Bibliometrie-Team bietet ein Tool an, das neben einer Schätzung für diese Zahlen auch die Unsicherheit bei der Schätzung veranschaulicht und dadurch auf die mit den Verträgen einhergehende Planungsunsicherheit hinweist.</p>
        </div>
        <div class="col-md-5 order-md-1">
            <img class="featurette-image img-fluid mx-auto" src="img/news_predictions.PNG" alt="Generic placeholder image">
        </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
        <div class="col-md-7">
            <h2 class="featurette-heading fw-normal lh-1">Bibliometrie für die  <span class="text-body-secondary">Exzellenzinitiative</span></h2>
            <p class="lead">Das Bibliometrie-Team hat die Forschungsgruppen, die sich als Exzellenzcluster in der Exzellenzinitiative bewerben wollen, bei Ihren Vorbereitungen und Anträgen durch Analysen der Clusterzusammensetzung, Publikationsaktivität und Vernetzung unterstützt. Wir wünschen den Gruppen viel Erfolg bei der Bewerbung!</p>
        </div>
        <div class="col-md-5">
            <img class="featurette-image img-fluid mx-auto" src="img/exc.PNG" alt="Generic placeholder image" style="filter: blur(0.1px);-webkit-filter: blur(0.1px);">
        </div>
    </div>


<?php Template::loadChild('public/disclaimer'); ?>

<?php Template::loadChild('public/footer'); ?>
			
