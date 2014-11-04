$(() ->
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
)

