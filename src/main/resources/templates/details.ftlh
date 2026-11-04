<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Character Gallery</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>

<body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
        crossorigin="anonymous"></script>

    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-warning">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <img src="/thumbnails/chicken.ico" alt="Logo" width="25" height="25" class="d-inline-block align-text-top">
                Stardew Valley Gallery

            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-link" href="index">Home</a>
                    <a class="nav-link active" aria-current="page" href="details">Details</a>
                    <a class="nav-link" href="about">About</a>
                    <a class="nav-link" href="new-character-form">Add Character</a>
                </div>
            </div>
        </div>
    </nav>

    <p> </p>

    <div class="container-md">
        <button type="button" class="btn btn-outline-secondary">&larr; Back to Gallery</button>
    </div>

    <p> </p>


    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <img src="/thumbnails/${(myChar.thumbnailUrl)!'image-placeholder.webp'}" class="img-thumbnail" width="300" alt="...">
                <p> </p>
                <div class="card text-dark bg-light mb-3" style="max-width: 19rem;">
                    <div class="card-header">
                        <p class="text-center">Quick Info</p>
                    </div>
                    <div class="card-body">
                        <h5 class="card-title"> ${myChar.name} </h5>
                        <p class="card-text"> ${myChar.description} </p>
                        <h6>Location: <span class="badge bg-success">${myChar.mapLocation}</span></h6>
                        <h6>Marriage Candidate: ${myChar.marriageCandidate?string('Yes', 'No')} </h6>
                        <h6>Birthday: ${myChar.birthday} </h6>
                    </div>
                </div>
            </div>
            <div class="col-md-7">
                <h3>Relationships</h3>
                <p> ${myChar.relationships} </p>
                <h3>Loved Gifts</h3>
                <p> ${myChar.gifts} </p>
            </div>
        </div>
    </div>


</body>

</html>