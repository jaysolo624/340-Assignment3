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
                    <a class="nav-link active" aria-current="page" href="index">Home</a>
                    <a class="nav-link" href="details">Details</a>
                    <a class="nav-link" href="about">About</a>
                    <a class="nav-link" href="new-character-form">Add Character</a>
                </div>
            </div>
        </div>
    </nav>

    <!-- Title and search bar-->
    <h1 class="text-center mt-5">Stardew Valley Character Gallery</h1>
    <p class="text-center"> Explore a collection of characters from the video game Stardew Valley! </p>

    <div class="container">
        <form class="d-flex" role="search">
            <input class="form-control me-2" type="search" placeholder="Search by character name or map location"
                aria-label="Search" />
            <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
    </div>

    <p> <br> </p>


    <!-- Character Cards -->
    <div class="container"> 
    <div class="row row-cols-1 row-cols-md-3 g-4">
        <div class="col">
            <div class="card h-100">
                <img src="Assets/Sebastian.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Sebastian</h5>
                    <p class="card-text"> Sebastian is a rebellious loner. He tends to get absorved in his work, computer games, and sci-fi novels. He is one of the twelve marriage candidates. </p>
                    <h6>Location: <span class="badge bg-danger">Mountains</span></h6>
                    <a href="details.html" class="btn btn-dark">View Details</a>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card h-100">
                <img src="Assets/Leah.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Leah</h5>
                    <p class="card-text">Leah is an aspiring artist who loves the outdoors. She will often spend time outside, foraging for a wild meal or just enjoying the season. She is one of the twelve marriage candidates. </p>
                    <h6>Location: <span class="badge bg-success">Cindersap Forest</span></h6>
                    <a href="details.html" class="btn btn-dark">View Details</a>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card h-100">
                <img src="Assets/Pierre.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Pierre</h5>
                    <p class="card-text">Pierre is the owner of the general store in Pelican Town, where he lives with his wife and daughter. His shop is one of the main sources of seeds for the farmer.</p>
                    <h6>Location: <span class="badge bg-info">Pelican Town</span></h6>
                    <a href="details.html" class="btn btn-dark">View Details</a>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card h-100">
                <img src="Assets/Willy.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Willy</h5>
                    <p class="card-text"> Willy is an older fisherman, who teaches the farmer how to fish. He runs a fishing supply store out of his cabin on the beach. He spends most of his time fishing or in the Stardrop Saloon.</p>
                    <h6>Location: <span class="badge bg-primary">Beach</span></h6>
                    <a href="details.html" class="btn btn-dark">View Details</a>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card h-100">
                <img src="Assets/Sandy.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Sandy</h5>
                    <p class="card-text"> Sandy lives in Calico Desert, and does not leave her store, the Oasis. She is very good friends with Emily from Pelican Town, and is delighted when the farmer gifts her flowers. </p>
                    <h6>Location: <span class="badge bg-warning">Calico Desert</span></h6>
                    <a href="details.html" class="btn btn-dark">View Details</a>
                </div>
            </div>
        </div>
    </div>
    </div>


</body>

</html>