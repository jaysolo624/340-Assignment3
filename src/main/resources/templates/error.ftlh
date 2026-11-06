<#import "layout.ftlh" as l>
  <@l.page title="Error" active="home">
    
    <h1>Error</h1>
    <p>${errorMessage!'An error occurred.'} </p>

    <div class="text-center">
    <img src="/thumbnails/Emote_Question.png" class="rounded" alt="question mark image">
    </div>

    <a href="/">Back to all characters</a>

  </@l.page>