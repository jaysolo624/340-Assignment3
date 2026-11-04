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
                <img src="Assets/chicken.ico" alt="Logo" width="25" height="25" class="d-inline-block align-text-top">
                Stardew Valley Gallery

            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-link" href="index.html">Home</a>
                    <a class="nav-link" href="details.html">Details</a>
                    <a class="nav-link" href="about.html">About</a>
                    <a class="nav-link active" aria-current="page" href="new-character-form.html">Add Character</a>
                </div>
            </div>
        </div>
    </nav>

    <h2 class="text-center mt-5"> Add New Character</h2>
    <p class="text-center">Share your favorite Stardew Valley character.</p>

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card shadow-sm p-4">
                    <h3 class="mb-4 text-center">Character Information</h3>
                    <form class="row g-3 needs-validation" novalidate>

                        <label for="validationCustom01" class="form-label">Character name</label>
                        <input type="text" class="form-control" id="validationCustom01" required>
                        <div class="valid-feedback">
                            Looks good!
                        </div>


                        <label for="validationCustom02" class="form-label">Image URL</label>
                        <input type="text" class="form-control" id="validationCustom02" required>
                        <div class="valid-feedback">
                            Looks good!
                        </div>



                        <label for="validationCustom04" class="form-label">Location</label>
                        <select class="form-select" id="validationCustom04" required>
                            <option selected disabled value="">Choose...</option>
                            <option>Pelican Town</option>
                            <option>Cindersap Forest</option>
                            <option>Beach</option>
                            <option>Mountains</option>
                            <option>Calico Desert</option>
                            <option>Ginger Island</option>
                        </select>
                        <div class="invalid-feedback">
                            Please select a valid Location.
                        </div>


                        <label for="userMessage" class="form-label">Loved Gifts</label>
                        <textarea class="form-control" id="gifts" rows="4"
                            placeholder="This character loves..."></textarea>
                        <div class="invalid-feedback">
                            Please provide a valid gift.
                        </div>
                        
                        <label for="userMessage" class="form-label">Short Description</label>
                        <textarea class="form-control" id="description" rows="4"
                            placeholder="This character is..."></textarea>
                        <div class="invalid-feedback">
                            Please provide a valid description.
                        </div>

                        <button class="btn btn-primary" type="submit">Submit form</button>

                    </form>
                </div>
            </div>
        </div>
    </div>



</body>

</html>