# Place all the behaviors and hooks related to the matching controller here.
# All this logic will aut

$(document).on 'turbolinks:load', ->
  $('select').material_select()
  return