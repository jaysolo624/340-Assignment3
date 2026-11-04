<#import "layout.ftlh" as l>
<@l.page title="Home" active="home">

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

</@l.page>