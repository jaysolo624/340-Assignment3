<#import "layout.ftlh" as l>
    <@l.page title="Home" active="home">

        <!-- Title and search bar-->
        <h1 class="text-center mt-5">Stardew Valley Character Gallery</h1>
        <p class="text-center"> Explore a collection of characters from the video game Stardew Valley! </p>

        <div class="container">
            <form class="d-flex justify-content-center" role="search" method="get" action="/characters">
                <input class="form-control me-2" type="text" name="name" value="${name!''}"
                    placeholder="Search by character name" aria-label="Search" style="max-width: 300px;" />
                <select class="form-select" style="max-width: 300px;"
                    name="mapLocation">
                    <option value="">Any location</option>
                    <option value="PELICAN_TOWN" <#if selectedLocation=='PELICAN_TOWN'>selected</#if>>Pelican Town
                    </option>
                    <option value="MOUNTAINS" <#if selectedLocation=='MOUNTAINS'>selected</#if>>Mountains</option>
                    <option value="BEACH" <#if selectedLocation=='BEACH'>selected</#if>>Beach</option>
                    <option value="CINDERSAP_FOREST" <#if selectedLocation=='CINDERSAP_FOREST'>selected</#if>>Cindersap
                        Forest</option>
                    <option value="CALICO_DESERT" <#if selectedLocation=='CALICO_DESERT'>selected</#if>>Calico Desert
                    </option>
                    <option value="GINGER_ISLAND" <#if selectedLocation=='GINGER_ISLAND'>selected</#if>>Ginger Island
                    </option>
                </select>
                <button class="btn btn-outline-success" type="submit">Search</button>
                <#if name?has_content || selectedLocation?has_content>
                    <a href="/characters" class="clear">Clear</a>
                </#if>
            </form>
        </div>


        <p> <br> </p>

        <p class="count">${characters?size} character(s)</p>

        <!-- Character Cards -->
        <div class="container">
            <div class="row row-cols-1 row-cols-md-3 g-4">
                <#list characters as character>
                    <div class="col">
                        <div class="card h-100">
                            <img src="${(character.thumbnailUrl)!'/thumbnails/image-placeholder.webp'}"
                                class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">${character.name}</h5>
                                <p class="card-text"> ${character.description} </p>
                                <h6>Location: <span class="badge 
                                    <#switch character.mapLocation?string>
                                        <#case "PELICAN_TOWN">bg-info<#break>
                                        <#case "MOUNTAINS">bg-danger<#break>
                                        <#case "BEACH">bg-primary<#break>
                                        <#case "CINDERSAP_FOREST">bg-success<#break>
                                        <#case "CALICO_DESERT">bg-warning<#break>
                                        <#case "GINGER_ISLAND">bg-warning<#break>
                                        <#default>bg-secondary
                                    </#switch>"> ${character.mapLocation} </span> </h6>
                                <a href="/characters/${character.id?c}" class="btn btn-dark">View Details</a>
                            </div>
                        </div>
                    </div>
                    <#else>
                    <p class="empty">No characters found.</p>
                </#list>
            </div>
        </div>


    </@l.page>