# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $("[data-xeditable=true]").each ->
    $(@).editable
      ajaxOptions:
        type: "PUT"
        dataType: "json"
      params: (params) ->
        railsParams = {}
        railsParams[$(@).data("model")] = {}
        railsParams[$(@).data("model")][params.name] = params.value

        return railsParams
