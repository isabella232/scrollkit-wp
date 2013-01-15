$ = jQuery
apiEndpoint = 'http://localhost:3000/api'

$('#scrollkit-wp-convert').on 'click', (e)->
  data =
    title: $('#title').val()
    content: window.tinymce.activeEditor.getContent()
    id: $('#post_ID').val()

  $.ajax
    type: "POST"
    url: "#{apiEndPoint}/new"
    data: data
    error: (jqXHR) ->
      alert jqXHR.responseText
      console.log jqXHR

    success: (data) =>
      alert "B-)"
      console.log data
