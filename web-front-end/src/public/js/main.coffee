sendForm = (postData)->
    $.ajax
        type: 'POST'
        url: '/score'
        data: postData
        timeout: 3000


$(() ->
    $('form').submit ()->
        return false

    $('#location').click ()->
        if navigator.geolocation
            navigator.geolocation.getCurrentPosition (pos)->
                    alert pos.coords
                (err)->
                    alert err.message
            
            # Unfinished
            navigator.geolocation.watchPosition (pos)->
                    null
                (err)->
                    null

        else
            alert 'Unaccessible.'

    $('#share').click ()->
        null

    $('#stop').click ()->
        postData =
            stop: $(this).value

        sendForm postData
)

