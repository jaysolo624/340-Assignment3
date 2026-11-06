<#macro page title active="">
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>${title} | Stardew Valley Characters</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    </head>

    <body>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
            crossorigin="anonymous"></script>
        <nav class="navbar navbar-expand-lg navbar-dark bg-warning">
        <div class="container-fluid">
            <a class="navbar-brand" href="/characters">
                <img src="/thumbnails/chicken.ico" alt="Logo" width="25" height="25" class="d-inline-block align-text-top">
                Stardew Valley Gallery

            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-link <#if active == 'home'>active</#if>" href="/characters">Home</a>
                    <a class="nav-link <#if active == 'about'>active</#if>" href="/about">About</a>
                    <a class="nav-link <#if active == 'new'>active</#if>" href="/characters/new">Add Character</a>
                </div>
            </div>
        </div>
    </nav>

        <main class="container">
                <#if message??>
                    <p class="alert">${message}</p>
                </#if>
                <#nested>
        </main>

    </body>

    </html>
</#macro>