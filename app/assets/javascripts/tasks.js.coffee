# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('.table').tablesorter({
    headers: {
      3: {
        sorter: false
      }
    }
  })

  $('.select2').select2({
    width: '200px'
  })
