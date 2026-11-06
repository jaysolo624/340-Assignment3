<#import "layout.ftlh" as l>
    <@l.page title=formTitle active=(characterId??)?then('', 'new' )>

        <h2 class="text-center mt-5"> ${formTitle}</h2>

        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="card shadow-sm p-4">
                        <h3 class="mb-4 text-center">Character Information</h3>
                        <form class="row g-3 needs-validation" novalidate method="post" action="${formAction}">

                            <label for="name" class="form-label">Character name</label>
                            <input type="text" class="form-control" id="name" name="name" value="${(character.name)!''}"
                                required>
                            <div class="valid-feedback">
                                Looks good!
                            </div>

                            <label for="birthday" class="form-label">Character birthday</label>
                            <input type="text" class="form-control" id="birthday" name="birthday"
                                value="${(character.birthday)!''}" required>
                            <div class="valid-feedback">
                                Looks good!
                            </div>


                            <label for="mapLocation" class="form-label">Location</label>
                            <#assign current=(character.mapLocation?string)!''>
                                <select class="form-select" id="mapLocation" name="mapLocation" required>
                                    <option selected disabled value="">Choose...</option>
                                    <option value="PELICAN_TOWN" <#if current=='PELICAN_TOWN'>selected</#if>>Pelican
                                        Town</option>
                                    <option value="CINDERSAP_FOREST" <#if current=='CINDERSAP_FOREST'>selected</#if>
                                        >Cindersap Forest</option>
                                    <option value="BEACH" <#if current=='BEACH'>selected</#if>>Beach</option>
                                    <option value="MOUNTAINS" <#if current=='MOUNTAINS'>selected</#if>>Mountains
                                    </option>
                                    <option value="CALICO_DESERT" <#if current=='CALICO_DESERT'>selected</#if>>Calico
                                        Desert</option>
                                    <option value="GINGER_ISLAND" <#if current=='GINGER_ISLAND'>selected</#if>>Ginger
                                        Island</option>
                                </select>
                                <div class="invalid-feedback">
                                    Please select a valid Location.
                                </div>

                                <label for="marriageCandidate" class="check">
                                    <input type="checkbox" name="marriageCandidate" <#if
                                        character.marriageCandidate>checked</#if>>
                                    Marriage Candidate
                                </label>

                                <label for="description" class="form-label">Short Description</label>
                                <textarea class="form-control" id="description" rows="4" name="description" required
                                    placeholder="This character is...">${(character.description)!''}</textarea>
                                <div class="invalid-feedback">
                                    Please provide a valid description.
                                </div>

                                <label for="gifts" class="form-label">Loved Gifts</label>
                                <textarea class="form-control" id="gifts" rows="4" name="gifts" required
                                    placeholder="This character loves...">${(character.gifts)!''}</textarea>
                                <div class="invalid-feedback">
                                    Please provide a valid gift.
                                </div>

                                <label for="relationships" class="form-label">Relationships </label>
                                <textarea class="form-control" id="relationships" rows="4" name="relationships" required
                                    placeholder="This character is friends with...">${(character.relationships)!''}</textarea>
                                <div class="invalid-feedback">
                                    Please provide at least one relationship.
                                </div>

                                <!-- <label for="imageFile">Picture (JPEG, PNG, or WebP, up to 1 MB)</label>
                                <#if characterId??>
                                    <img class="thumb" src="/characters/${characterId?c}/image" alt="Current picture">
                                </#if>
                                <input id="imageFile" name="imageFile" type="file"
                                    accept="image/jpeg,image/png,image/webp"> -->

                                <label for="thumbnailUrl"
                                    class="form-label">Picture URL</label>
                                <input type="url" class="form-control"
                                id="thumbnailUrl" name="thumbnailUrl"
                                value="${(character.thumbnailUrl)!''}"
                                placeholder="https://example.com/portrait.png">
                                <#if (character.thumbnailUrl)?has_content>
                                    <img class="thumb"
                                    src="${character.thumbnailUrl}"
                                    width="150"
                                    alt="Current picture">
                                </#if>


                                <button class="btn btn-primary" type="submit">Submit form</button>

                        </form>
                    </div>
                </div>
            </div>
        </div>


    </@l.page>