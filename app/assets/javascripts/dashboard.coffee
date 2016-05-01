# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

resortColumns = ->
  console.log 'to sort or not to sort'

toggleSubGoals = (src)->
  $('.more-sub-goals-link').toggle()
  addSubGoal = $(src).parents('.panel-body').children('li.additional-sub-goals')
  $(addSubGoal).slideToggle('fast')

$(window).on 'resize', (event) =>
  resortColumns()

$(document).on 'click', '.more-sub-goals-link', ( ->
  toggleSubGoals(this)
);