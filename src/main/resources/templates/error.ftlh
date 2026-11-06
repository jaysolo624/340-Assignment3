<#import "layout.ftlh" as l>
  <@l.page title="Error" active="home">
    
  <p> </p>

    <div class="text-center">
        <img src="/thumbnails/Emote_Question.png" class="rounded" alt="question mark image" width="168" height="168">
        <h1>Where'd they go?</h1>
        <p>${errorMessage!'This character is not here... maybe you got the address wrong'} </p>
    </div>

    <a href="/">Back to all characters</a>

  </@l.page>