$(() ->
    $('#location').click ()->
        if navigator.geolocation
            navigator.geolocation.getCurrentPosition (pos)->
                    alert pos.coords
                (err)->
                    alert err.message
        else
            alert 'Unaccessible.'
)

