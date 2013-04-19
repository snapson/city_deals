#= require jquery-1.9.1.min
#= require_tree .
#= require_self

$(document).ready ->

  $(document).click ->
    $("#cityChooseMenu").hide()

  $("#cityChoose").on "click", (e) ->
    e.preventDefault()
    e.stopPropagation()
    $("#cityChooseMenu").show()

  $("#cityChooseMenu").on "click", "a", (e) ->
    e.preventDefault()
    e.stopPropagation()
    unless $(this).hasClass("disabled")
      $("#cityChoose i").text $(this).text()
      $("#cityChooseMenu").hide()
