# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('form').on 'click', '.remove_fields', (event) ->
    tot = $('.answer input[type=text]').length
    hid = $('.answer input[type=text]').filter(":hidden").length
    vis = tot - hid
    if vis < 11
      $('.add_fields').removeAttr 'disabled'
    $(this).prev('input[type=hidden]').val('1')
    $(this).closest('fieldset').hide()
    event.preventDefault()

  $('form').on 'click', '.add_fields', (event) ->
    tot = $('.answer input[type=text]').length
    hid = $('.answer input[type=text]').filter(":hidden").length
    vis = tot - hid
    if vis > 8
      $(this).attr 'disabled', 'disabled'
      event.preventDefault()
    if vis < 10
      time = new Date().getTime()
      regexp = new RegExp($(this).data('id'), 'g')
      $(this).before($(this).data('fields').replace(regexp, time))
      event.preventDefault()

  $('#question_tag_tokens').tokenInput '/tags.json'
    theme: 'facebook'
    placeholder: 'Enter Tags'
    prePopulate: $('#question_tag_tokens').data('load')